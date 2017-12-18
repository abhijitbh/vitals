<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Vitals Dashboard</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <meta name="csrf-token" content="{{ csrf_token() }}">
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

    <div class="wrapper">
        <div class="sidebar" data-color="purple" data-image="{{ asset('img/sidebar-5.jpg') }}">

            <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="{{ url('/home') }}" class="simple-text">
                       <span><img src="{{ asset('/img/vitals.png') }}"></img></span>
                    </a>
                </div>

                <ul class="nav">
                 
                <li class="active">
                    <a href="{{ url('/userproduct') }}">
                    <i class="pe-7s-user"></i>
                    <p>UserProduct</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="{{ url('/profile') }}"> {{ Auth::user()->name }} </a>
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
            <li class="separator hidden-lg hidden-md"></li>
        </ul>
    </div>
</div>
</nav>


<div class="content table-responsive">
<table class="table table-striped">
    <thead class="thead-dark">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>City</th>
        <th>Country</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    @foreach($users as $usr)
      <td>{{ $usr->name }}</td>
      <td>{{ $usr->email }}</td>
      <td>{{ $usr->address }}</td>
      <td>{{ $usr->city }}</td>
      <td>{{ $usr->country }}</td>
      <td><a class="btn btn-primary" href="{{ URL::to('module/'.$usr->id) }}" role="button">Select a Module</a>
      </td>
      <td> 
        <div class="btn-group" id="status" data-toggle="buttons">
            <input type="button" value="Approve" data="{{ $usr->id }}" class="toggle-type" id="approve_button" checked="checked">
            <input type="button" value="Unapprove" data="{{ $usr->id }}" class="toggle-type" id="unapprove_button" checked="checked">
        </div>
      </td>
    </tr>
    @endforeach
    </tbody>
    </table>

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


  <!--  Notifications Plugin    -->
  <script src="{{ asset('js/bootstrap-notify.js') }}"></script>


  <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
  <script src="{{ asset('js/light-bootstrap-dashboard.js?v=1.4.0') }}"></script>

  <!-- <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script> -->

  <script type="text/javascript">
  
  </script>
<script type="text/javascript">
  
  $(document).ready(function(){


    $("#approve_button").click(function(){
       var $id = $(this).attr('data');
       $("#approve_button").hide();
       $("#unapprove_button").show();
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
          method: "POST",
          url: "approveuser/"+ $id+"/1",
          // data: '1',
          data: "{}",
        })
        .done(function(response) {
          alert( "user Activated" );
        });
    });

     $("#unapprove_button").click(function(){
       var $id = $(this).attr('data');
       $("#unapprove_button").hide();
       $("#approve_button").show();
        $.ajax({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          method: "POST",
          url: "approveuser/"+ $id+"/0",
          // data: '0,'
        })
        .done(function( msg ) {
          alert( "user Deactivated" );
        });

    });
});
</script>>

</html>
