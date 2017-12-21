<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Vitals Dashboard</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="{{ asset('css/animate.min.css') }}" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="{{ asset('css/light-bootstrap-dashboard.css?v=1.4.0') }}" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="{{ asset('css/demo.css') }}" rel="stylesheet" />

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
                   <li>
                    <a href="{{ url('/home') }}">
                        <i class="pe-7s-user"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="active">
                    <a href="{{ url('/profile') }}">
                        <i class="pe-7s-graph"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                
                @foreach($activemodules as $module)
                <li>
                    <a href="#">
                        <i class="pe-7s-graph"></i>
                        <p>{{ $module->module_name}}</p>
                    </a>
                </li>
                @endforeach
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


<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="header">
                        <h4 class="title">Edit Profile</h4>
                    </div>
                    <div class="content">
                        <form  method="POST" action="/update">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" value="{{ Auth::user()->email }}" disabled class="form-control" placeholder="Email">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Full Name</label>
                                        <input type="text" name="name" value="{{ Auth::user()->name }}" class="form-control" placeholder="Full Name" value="Mike">
                                        @if ($errors->has('name'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Address</label>
                                        <input type="text" class="form-control" name="address" placeholder="Home Address" value="{{ Auth::user()->address }}">
                                        @if ($errors->has('address'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('address') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>City</label>
                                        <input type="text" name="city" class="form-control" placeholder="City" value="{{ Auth::user()->city }}">
                                        @if ($errors->has('city'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('city') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Country</label>
                                        <input type="text" name="country" class="form-control" placeholder="Country" value="{{ Auth::user()->country }}">
                                        @if ($errors->has('country'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('country') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Postal Code</label>
                                        <input type="number" name="postal_code" class="form-control" placeholder="Postal Code" value="{{ Auth::user()->postal_code }}">
                                        @if ($errors->has('postal_code'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('postal_code') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>About Me</label>
                                        <textarea rows="5" name="about_me" class="form-control" placeholder="Here can be your description" value="Mike">{{ Auth::user()->about_me }}</textarea>
                                        @if ($errors->has('about_me'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('about_me') }}</strong>
                                        </span>
                                        @endif
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card card-user">
                    <div class="image">
                        <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                    </div>
                    <div class="content">
                        <div class="author">
                         <a href="#">
                            @if (Auth::user()->avatar)
                            <img class="avatar border-gray" src="{{ Auth::user()->avatar }}" alt="..."/>
                            @else
                             <img class="avatar border-gray" src="{{ asset('img/default-avatar.png') }}" alt="..."/>
                            @endif
                            <h4 class="title"> {{ Auth::user()->name }} <br />
                             <small>  </small>
                         </h4>
                     </a>
                 </div>
                                <p class="description text-center"> 
                                    {{ Auth::user()->about_me }} 
                                                </p>
                                            </div>
                                            <hr>
                                        </div>
                                    </div>

                                </div>
                            </div>
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


       

        </html>
