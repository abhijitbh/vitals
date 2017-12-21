<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
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
    
    <!-- css for custom one -->

    <link rel="stylesheet" href="{{ asset('/css/custom.css') }}">


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="{{ asset('css/pe-icon-7-stroke.css') }}" rel="stylesheet" />
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">

</head>
<body>

    <div class="wrapper">
        <div class="sidebar" data-color="purple" data-image="{{ asset('img/sidebar-5.jpg') }}">

                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a href="" class="simple-text">
                        <span><img src="{{ asset('/img/vitals.png') }}"></img></span>
                        </a>
                    </div>

                    <ul class="nav">
                    <li>
                        <a href="{{ url('/userproduct') }}">
                        <i class="pe-7s-user"></i>
                        <p>UserProduct</p>
                        </a>
                        </li>
                    </ul>
                    </div>
                </div>


<div class="main-panel">
@if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
@endif
    <nav class="navbar navbar-default navbar-fixed">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{ url('/profile') }}">{{ Auth::user()->name }}</a>
            </div>
                <div class="collapse navbar-collapse">
                    
                    <ul class="nav navbar-nav navbar-right">
                            <li>
                             <a href="{{ url('/profile') }}">
                                 <p>Account</p>
                             </a>
                         </li>
                         <li>
                            <a href="{{ route('logout') }}"
                            onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();">
                            <p>Logout</p>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                {{ csrf_field() }}
                            </form>
                           </a>
                        </li>
                        <li class="separator hidden-lg"></li>
                    </ul>
                </div>
        </div>
</nav>


<div class="content">
<form action="" method="post">

{{ csrf_field() }}
    
    @foreach($userProduct as $module)
    <div class="row product-row">    
    <div class="product-text">{{$module->module_name}}</div>
        <div class="col-md-5 toggle-mode">
            <div class="btn-group" id="status" data-toggle="buttons">
              <label class="btn btn-default btn-on btn-xs @if($module->toggle == 1 ) {{'active'}} @endif">
                
              <input type="radio" value="1"  name="toggle_type[{{$module->module_id}}]" @if($module->toggle == 1 ) {{ 'checked="checked"'}} @endif >ON</label>
              <label class="btn btn-default btn-off btn-xs @if($module->toggle == 0 ) {{'active'}} @endif">
              <input type="radio" value="0" name="toggle_type[{{$module->module_id}}]" @if($module->toggle == 0 ) {{ 'checked="checked"'}} @endif>OFF</label>
            </div>
        </div>
    </div>
    @endforeach

    <button type="submit" class="btn btn-info btn-fill module-btn">Save</button>
    </form>
</div>


<footer class="footer">
    <div class="container-fluid">
        <nav class="pull-left">

        </nav>
        <p class="copyright pull-right">
            &copy; Vitals Senior Living Software
        </p>
    </div>
</footer>

</div>
</div>


</body>

<!--   Core JS Files   -->
<script src="{{ asset('js/jquery.3.2.1.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('js/bootstrap.min.js') }}" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="{{ asset('js/chartist.min.js') }}"></script>

<!--  Notifications Plugin    -->
<script src="{{ asset('js/bootstrap-notify.js') }}"></script>


<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="{{ asset('js/light-bootstrap-dashboard.js?v=1.4.0') }}"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/chartist/0.11.0/chartist.min.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="{{ asset('js/demo.js') }}"></script>
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

<script type="text/javascript">
        $(document).ready(function(){

            demo.initChartist();

            $.notify({
                icon: 'pe-7s-gift',
                message: "Welcome to Vitals Dashboard."

            },{
                type: 'info',
                timer: 4000
            });

        });
    </script>
</html>
