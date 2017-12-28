<?
/*### Revision History ####################################################
Date -  Changes Made    Made by whom
5/10/2006   -   Add code for companies using other then caselle.    - Mick
5/17/06 -       Changed format to use the Cart ID that is passed with the transaction - Mick
#########################################################################*/
require_once("C:\\xbp\\incs\\sessdb.php");
include "../utils/utilities.php";
include("xmin_security.php");

$response = ['status' => 'success'];

if(isset($_POST['action']) && $_POST['action'] == 'add_custom_form'){

	if(empty($_POST['custom_form_name'])){
		$response['status'] = "error";
		$response['message'] = "Form name cannot be blank.";
		echo json_encode($response);
		die;
	}

	$customFormArray = ['name' => $_POST['custom_form_name'] ];
	$customFormRslt = postAnyTable("custom_form", $customFormArray);

	if($customFormRslt[0] == "0"){
		$_POST['custom_form_fields'] = json_decode($_POST['custom_form_fields']);

		foreach ( $_POST['custom_form_fields'] as $key => $field ) {
			$field = get_object_vars($field);
			$field['custom_form_id'] = $customFormRslt[1] ;
			$field['class_name'] = $field['className'];
			unset($field['className']);

			if(in_array($field['type'], ["checkbox-group", "select" ]) ){
				$field['values'] = json_encode($field['values']);
			}
			$field['field_order'] = ( $key + 1 ) ;
			postAnyTable("custom_form_fields", $field  );
		}
	}
	echo json_encode($response);
	die;
}

if(isset($_POST['action']) && $_POST['action'] == 'get_form'){

	$formFields = xquery("SELECT * FROM custom_form_fields
						  WHERE custom_form_id = ? ", [ $_POST['custom_form_id'] ] );

	$customFormId = $formFields[0]['custom_form_id'];

	foreach ($formFields as $key => $field) {
		$formFields[$key]['className'] = $formFields[$key]['class_name'];
		$formFields[$key]['values'] = json_decode($formFields[$key]['values']);

		unset($formFields[$key]['class_name']);
		unset($formFields[$key]['custom_form_fields_id']);
		unset($formFields[$key]['custom_form_id']);
		unset($formFields[$key]['created_at']);
		unset($formFields[$key]['field_order']);

		if(!empty($formFields[$key]['maxlength']))
			$formFields[$key]['maxlength'] = '"'. $formFields[$key]['maxlength'] .'"';
		else
			unset($formFields[$key]['maxlength']);

		if(!empty($formFields[$key]['rows']))
			$formFields[$key]['rows'] = '"'. $formFields[$key]['rows'] .'"';
		else
			unset($formFields[$key]['rows']);

		$formFields[$key]['required'] = (!empty($formFields[$key]['required'])) ? true : false;
		$formFields[$key]['toggle'] = (!empty($formFields[$key]['toggle'])) ? true : false;
		$formFields[$key]['multiple'] = (!empty($formFields[$key]['multiple'])) ? true : false;

		foreach ($field as $fieldKey => $value) {
			if(in_array($formFields[$key][$fieldKey] , ['', false ]))  unset($formFields[$key][$fieldKey]);
		}

	}
	$response['custom_form_id'] = $customFormId;
	$response['form_data'] = $formFields;
	echo  json_encode($response);
	die;
}


function randomKey($length) {
    $key = '';
    $keys = array_merge(range(0, 9), range('a', 'z'));
    for ($i = 0; $i < $length; $i++) {
        $key .= $keys[array_rand($keys)];
    }
    return $key;
}

if(isset($_POST['submit_custom_form']) && $_POST['submit_custom_form'] == 'Post Data'){

	$custom_form_id = $_POST['custom_form_id'];
	unset($_POST['custom_form_id']);
	$customFormFields = xquery("SELECT custom_form_fields_id, name, label, type
								FROM custom_form_fields
						  	    WHERE custom_form_id = ?
						  	    ORDER BY field_order ASC", [$custom_form_id ]);

	$record_key = randomKey(10);
	$target_dir = "forms/uploads/";
	$uploadOk = 1;
	foreach ($_POST as $key => $value) {
		foreach ($customFormFields as $feild) {
			if($key == $feild['name']){
				postAnyTable("custom_form_data", ['custom_form_id'=> $custom_form_id ,
											      'custom_form_fields_id'=> $feild['custom_form_fields_id'],
											      'value'=>  is_array($value)? $value[0]: $value ,
											      'record_key'=>  $record_key ,
											 	 ] );
			}
		}
	}

	foreach ($_FILES as $key => $value) {
		foreach ($customFormFields as $feild) {
			if($feild['type'] == "file" && $key == $feild['name'] ){

				$fileExt = end((explode(".", $_FILES[$key]["name"]))) ;

				$target_file = $target_dir . date('Ymdhis') . basename($_FILES[$key]["name"]);

				// Check file size
				if ($_FILES[$key]["size"] > 500000) $uploadOk = 0;

				// Allow certain file formats
				if( !in_array($fileExt, ["jpg", "png", "gif", "jpeg"]) ) $uploadOk = 0;

				if ( $uploadOk && move_uploaded_file($_FILES[$key]["tmp_name"], $target_file)) {

					postAnyTable("custom_form_data", ['custom_form_id'=> $custom_form_id ,
											      'custom_form_fields_id'=> $feild['custom_form_fields_id'],
											      'value'=>  $target_file ,
											      'record_key'=>  $record_key ,
											 	 ] );

				}
			}
		}
	}
}

$customForm = xquery("SELECT custom_form_id, name FROM custom_form ");

$feildData = xquery("SELECT ff.custom_form_fields_id, ff.label, fd.value, fd.record_key
					 FROM custom_form_fields ff
					 LEFT JOIN custom_form_data fd on fd.custom_form_fields_id = ff.custom_form_fields_id
					 WHERE ff.custom_form_id = ?
					 ORDER BY fd.created_at DESC , fd.record_key, fd.custom_form_fields_id ASC", [1]);

?>

<html>
<head>
	<title>Xpress Bill Pay - Add Custom Form</title>
	<?php include $_SERVER["DOCUMENT_ROOT"] . "/style/style.php"; ?>
	<link rel="stylesheet" type="text/css" href="forms/assets/css/demo.css">
	<link rel="stylesheet" type="text/css" media="screen" href="forms/assets/css/form-builder.min.css">
	<link rel="stylesheet" type="text/css" media="screen" href="forms/assets/css/form-render.min.css">

	<style type="text/css">

		/*.display_form{
			display: block;
			float: left;
			width: 100%;
			font-family: Arial, Helvetica, sans-serif;
		    font-size: 8.5pt;
		    color: #000000;
		    max-width: 500px;
		}*/


		/*.display_form .form-group {
			width: 100%;
		    display: inline-block;
		    float: left;
		    margin: 10px;
		}

		.display_form label, .display_form .form-control{
			text-align: right;
			width: 40%;
		    float: left;
		    display: inline-block;
		    padding: 10px;
		}*/
	</style>
</head>


<? include ("../utils/tempTop.html");?>
	<!-- Main Content Div -->
	<div id="Content">
		<? include ("../utils/contentWHeaderG1.html");?>
		<span class="header1">Add Custom Form</span>
		<? include ("../utils/contentWHeaderG2.html");?>


		<table width="100%"  border="0" cellspacing="0" cellpadding="2">
			<tr align="left">
				<td colspan="3" class="section_headings">Add a custom form </td>
			</tr>
			<tr>
				<td width="30%" align="right" class="bold_body_text"> Custom form name:</td>
				<td width="1%" class="body_text">&nbsp;</td>
				<td width="69%" class="body_text">
					<input name="custom_form_name" id="custom_form_name" type="text" class="required_box" required size="20" maxlength="35">
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<div class="content">
						<div class="build-wrap"></div>
						<div class="render-wrap"></div>
						<button id="edit-form">Edit Form</button>
					</div>
				</td>
			</tr>
			<tr>
				<td width="30%" align="right" class="bold_body_text"> Custom Form:</td>
				<td width="1%" class="body_text">&nbsp;</td>
				<td width="69%" class="body_text">
					<select name="custom_form" id="custom_form">
						<option value=''>Select a Form...</option>
						<?php
							foreach ($customForm as $form) {
								echo "<option value='{$form['custom_form_id']}'>{$form['name']} </option>";
							}
						?>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="3">
				<form action="" enctype="multipart/form-data" method="post">
					<div  class="display_form">
					</div>
				</form>
				</td>
			</tr>
		</table>
		<br />
		<table >
			<thead>
			<?php
				$recordKey = '';
				foreach ($feildData  as $record ) {
					if(  !empty($recordKey)  && $recordKey != $record['record_key']  ) break;
					echo "<th>{$record['label']}<th>";
					$recordKey = $record['record_key'] ;
				}
			?>

			</thead>
			<tbody>
				<tr>
				<?php
					$recordKey = '';
					foreach ($feildData  as $record ) {
						if(  !empty($recordKey)  && $recordKey != $record['record_key']  ) echo "</tr><tr>";
						echo "<td>{$record['value']}<td>";
						$recordKey = $record['record_key'] ;
					}
				?>
				</tr>
			</tbody>
		</table>
		<script src="forms/assets/js/jquery.min.js"></script>
		<script src="forms/assets/js/form-builder.js"></script>
		<script src="forms/assets/js/form-render.js"></script>
		<? include ("../utils/contentWHeaderG3.html");?>
	</div>

<? include ("../utils/tempBot.html");?>

<script type="text/javascript">
	jQuery(document).ready(function($) {

		var myCSRFName = "<?php echo $_SESSION['CSRF_NAME'];?>";
		var myCSRFToken = "<?php echo $_SESSION[$_SESSION['CSRF_NAME']]; ?>";
		var apiEnvironment = "<?php echo $_SESSION['api_environment']; ?>";

		var buildWrap = document.querySelector('.build-wrap'),
			renderWrap = document.querySelector('.render-wrap'),
			editBtn = document.getElementById('edit-form'),
			formData = window.sessionStorage.getItem('formData'),
			editing = true,
			fbOptions = {
				dataType: 'json',
				controlPosition: 'left',
				disableFields: ['autocomplete', 'data', 'button'],
				//roles:{},
				inputSets: [
			      	{
				        label: 'Full Name',
				        name: 'user-details', // optional - one will be generated from the label if name not supplied
				        showHeader: false, // optional - Use the label as the header for this set of inputs
				        fields: [
				            {
				              	type: 'text',
				              	label: 'First Name',
				              	className: 'form-control'
				            },
				            {
				              	type: 'text',
				              	label: 'Last Name',
				              	className: 'form-control'
				            }
				        ]
			      	},
			      	{
				        label: 'Phone',
				        name: 'user-phone', // optional - one will be generated from the label if name not supplied
				        showHeader: false, // optional - Use the label as the header for this set of inputs
				        fields: [
				            {
				              	type: 'text',
				              	label: 'Phone number',
				              	className: 'form-control'
				            }
				        ]
			      	},
			    	{
				        label: 'Email',
				        name: 'user-email', // optional - one will be generated from the label if name not supplied
				        showHeader: false, // optional - Use the label as the header for this set of inputs
				        fields: [
				            {
				              	type: 'text',
				              	label: 'Email Address',
				              	className: 'form-control'
				            }
				        ]
			      	},
			      	{
				        label: 'Address',
				        name: 'user-address', // optional - one will be generated from the label if name not supplied
				        showHeader: false, // optional - Use the label as the header for this set of inputs
				        fields: [
				        	{
				              	type: 'text',
				              	label: 'Address Line 1',
				              	className: 'form-control'
				            },
				            {
				              	type: 'text',
				              	label: 'Address Line 2',
				              	className: 'form-control'
				            },
				            {
				              	type: 'text',
				              	label: 'Street',
				              	className: 'form-control'
				            },
				            {
				              	type: 'text',
				              	label: 'City',
				              	className: 'form-control'
				            },
				            {
				              	type: 'text',
				              	label: 'State/Province/Region',
				              	className: 'form-control'
				            },
				            {
				              	type: 'text',
				              	label: 'Country',
				              	className: 'form-control'
				            },
				            {
				              	type: 'text',
				              	label: 'Postal code',
				              	className: 'form-control'
				            }

				        ]
			      	},
			    ]
		};

		if (formData) {
			fbOptions.formData = JSON.parse(formData);
		}

		var toggleEdit = function() {
			document.body.classList.toggle('form-rendered', editing);
			editing = !editing;
		};

		var formBuilder = $(buildWrap).formBuilder(fbOptions).data('formBuilder');

		$('.form-builder-save').click(function() {
			toggleEdit();
			$.ajax({
	            type: "POST",
	          	url: "",
	          	data: { action: "add_custom_form",
	          			custom_form_fields: formBuilder.formData,
	          			custom_form_name: $('#custom_form_name').val(),
	          			CSRFName: myCSRFName,
	          			CSRFToken: myCSRFToken },
	          	dataType: "json",
	          	success: function(data) {
	          		location.reload();
	          	}
	      	});
			console.log(formBuilder.formData);
			// $(renderWrap).formRender({
			// 	dataType: 'json',
			// 	formData: formBuilder.formData
			// });
			// window.sessionStorage.setItem('formData', JSON.stringify(formBuilder.formData));
		});

		editBtn.onclick = function() {
			toggleEdit();
		};

		$('#custom_form').change(function(){

			console.log($('#custom_form').val() );

			$.ajax({
	            type: "POST",
	          	url: "",
	          	data: { action: "get_form",
	          			custom_form_id: $(this).val(),
	          			CSRFName: myCSRFName,
	          			CSRFToken: myCSRFToken },
	          	dataType: "json",
	          	success: function(data) {

	          		var markup = new FormRenderFn({
						dataType: 'json',
						render: false,
						formData:  JSON.stringify(data.form_data)
					}).markup;

					var formData = '<input type="hidden" name="custom_form_id" value="'+data.custom_form_id+'">'+ markup
					+ '<input type="submit" value="Post Data" name="submit_custom_form">';

					if($('#custom_form').val() == '' ) formData = '';
	          		$('.display_form').html(formData); // .formRender();
	          	}
	      	});
		});

	});
</script>

</body>
</html>