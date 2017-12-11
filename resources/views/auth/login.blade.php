<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Vitals Senior Living Software Solutions</title>
  <meta name="description" content="A free HTML template and UI Kit built on Bootstrap" />
  <meta name="keywords" content="free html template, bootstrap, ui kit, sass" />
  <meta name="author" content="Peter Finlan and Taty Grassini Codrops" />
  <link rel="apple-touch-icon" sizes="57x57" href="img/favicon/apple-touch-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="img/favicon/apple-touch-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="img/favicon/apple-touch-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-touch-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-touch-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-touch-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="img/favicon/apple-touch-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-touch-icon-180x180.png">
  <link rel="icon" type="image/png" href="img/favicon/favicon-32x32.png" sizes="32x32">
  <link rel="icon" type="image/png" href="img/favicon/android-chrome-192x192.png" sizes="192x192">
  <link rel="icon" type="image/png" href="img/favicon/favicon-96x96.png" sizes="96x96">
  <link rel="icon" type="image/png" href="img/favicon/favicon-16x16.png" sizes="16x16">
  <link rel="manifest" href="img/favicon/manifest.json">
  <link rel="shortcut icon" href="img/favicon/favicon.ico">
  <meta name="msapplication-TileColor" content="#663fb5">
  <meta name="msapplication-TileImage" content="img/favicon/mstile-144x144.png">
  <meta name="msapplication-config" content="img/favicon/browserconfig.xml">
  <meta name="theme-color" content="#663fb5">
  <link  href="{{ asset('css/vitals.css') }}" rel="stylesheet">
  <link rel="stylesheet" href="{{ asset('/css/custom.css') }}">
</head>

<body>

    <!-- Navigation
      ================================================== -->

      <nav class="navbar navbar-dark bg-inverse bg-inverse-custom navbar-fixed-top">
        <div class="container">
          <a class="navbar-brand" href="{{ url('/') }}">
            <span><img src="{{ asset('/img/vitals.png') }}"></img></span>
            <span class="sr-only">Vitals</span>
          </a>
          <a class="navbar-toggler hidden-md-up pull-xs-right" data-toggle="collapse" href="#collapsingNavbar" aria-expanded="false" aria-controls="collapsingNavbar">
            &#9776;
          </a>
          <a class="navbar-toggler navbar-toggler-custom hidden-md-up pull-xs-right" data-toggle="collapse" href="#collapsingMobileUser" aria-expanded="false" aria-controls="collapsingMobileUser">
            <span class="icon-user"></span>
          </a>
          <div id="collapsingNavbar" class="collapse navbar-toggleable-custom" role="tabpanel" aria-labelledby="collapsingNavbar">
            <ul class="nav navbar-nav pull-xs-right">
              <li class="nav-item nav-item-toggable">
                <a class="nav-link" href="./index-carousel.html"><small>NEW</small> Slides<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item nav-item-toggable">
                <a class="nav-link" href="http://www.vitalsware.com/products" target="_blank">Products</a>
              </li>
              <li class="nav-item nav-item-toggable">
                <a class="nav-link" href="http://www.vitalsware.com/case-studies" target="_blank">Case Studies</a>
              </li> 
              <li class="nav-item nav-item-toggable">
                <a class="nav-link" href="http://www.vitalsware.com/blog" target="_blank">Blog</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

    <!-- Hero Section
      ================================================== -->

      <header class="jumbotron bg-inverse text-xs-center center-vertically" role="banner">
        <div class="container">


         <div class="row justify-content-center">
          <div class="col-md-4">
          </div>

          <div class="col-md-4">

            <a class="btn btn-secondary-outline m-b-1 signup-lable" disabled>Login to Vitals Dashboard</a>

          <!-- Forms
            ================================================== -->
            <form class="form-horizontal" method="POST" action="{{ route('login') }}">
             {{ csrf_field() }}
             <div class="form-group has-icon-left form-control-email form-group{{ $errors->has('email') ? ' has-error' : '' }}">
              <label class="sr-only" for="inputEmail">Email address</label>
              <input type="email" class="form-control form-control-lg" id="inputEmail" placeholder="Email address" autocomplete="off" name="email" value="{{ old('email') }}" required autofocus>
              @if ($errors->has('email'))
              <span class="help-block">
                <strong>{{ $errors->first('email') }}</strong>
              </span>
              @endif
            </div>
            <div class="form-group has-icon-left form-control-password form-group{{ $errors->has('password') ? ' has-error' : '' }}">
              <label class="sr-only" for="inputPassword">Enter a password</label>
              <input type="password"  name="password" class="form-control form-control-lg" id="inputPassword" placeholder="Enter a password" autocomplete="off">
            </div>

            <div class="form-group">

              <div class="checkbox">
                <label>
                  <input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me
                </label>
              </div>

            </div>

          <!-- Buttons
            ================================================== -->

            <button type="submit" class="btn btn-primary btn-block">Sign in</button>
            <hr class="invisible">
            <button type="submit" class="btn btn-primary btn-block"><a href="{{ url('login/google') }}"> <span class="icon-google"></span> Login with Google</a>></button>
            <a class="btn btn-link" href="{{ route('password.request') }}" role="button">
              Forgot Your Password?
            </a>
          </form>
          <hr class="invisible">
        </div>

        <div class="col-md-4">
        </div>
      </div>


      <ul class="nav nav-inline social-share">
        <li class="nav-item"><a class="nav-link" href="https://twitter.com/vitalsware" target="_blank"><span class="icon-twitter"></span> 67+</a></li>
        <li class="nav-item"><a class="nav-link" href="https://www.facebook.com/vitalsware/" target="_blank"><span class="icon-facebook"></span> 279+</a></li>
        <li class="nav-item"><a class="nav-link" href="https://plus.google.com/105829967259945567081" target="_blank"><span class="icon-google"></span> 5+</a></li>
      </ul>


    </div>
  </header>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

  <script type="text/javascript" src="{{ asset('js/vitals.min.js') }}"></script>

  <script type="text/javascript">
   autoPlayYouTubeModal();

     // FUNCTION TO GET AND AUTO PLAY YOUTUBE VIDEO FROM DATATAG
     function autoPlayYouTubeModal() {
      var trigger = $("body").find('[data-toggle="modal"]');
      trigger.click(function () {
        var theModal = $(this).data("target"),
        videoSRC = $(this).attr("data-theVideo"),
        videoSRCauto = videoSRC + "?autoplay=1";
        $(theModal + ' iframe').attr('src', videoSRCauto);
        $(theModal + ' button.close').click(function () {
          $(theModal + ' iframe').attr('src', videoSRC);
        });
        $('.modal').click(function () {
          $(theModal + ' iframe').attr('src', videoSRC);
        });
      });
    }

  </script>
</body>
</html>
