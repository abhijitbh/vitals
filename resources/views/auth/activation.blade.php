<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
   <!--  <link rel="icon" type="image/png" href="assets/img/favicon.ico"> -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Vitals Dashboard</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <!-- Bootstrap core CSS     -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="{{ asset('css/animate.min.css') }}" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="{{ asset('css/light-bootstrap-dashboard.css?v=1.4.0') }}" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="{{ asset('css/demo.css') }}" rel="stylesheet" />

    <link rel="stylesheet" href="{{ asset('/css/custom.css') }}">

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="{{ asset('css/pe-icon-7-stroke.css') }}" rel="stylesheet" />

</head>
<body>

<h3 align="center">Hello {{$name}},</h3></br>
Your account request Account Name:{{$email}} has been approved by the Admin.</br>
Please <a href="{{ $company_login }}">click here</a> to login your account.</br>

<b>Note:</b>Please don't reply to this automatically generated email.
</body>
</html>