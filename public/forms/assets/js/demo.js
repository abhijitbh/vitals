jQuery(document).ready(function($) {
	var buildWrap = document.querySelector('.build-wrap'),
		renderWrap = document.querySelector('.render-wrap'),
		editBtn = document.getElementById('edit-form'),
		formData = window.sessionStorage.getItem('formData'),
		editing = true,
		fbOptions = {
			dataType: 'json',
			disableFields: ['autocomplete', 'file', 'data', ],
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
		console.log(formBuilder.formData);
		$(renderWrap).formRender({
			dataType: 'json',
			formData: formBuilder.formData
		});

		window.sessionStorage.setItem('formData', JSON.stringify(formBuilder.formData));
	});

	editBtn.onclick = function() {
		toggleEdit();
	};
});