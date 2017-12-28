@extends('layouts.user_header')

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


@include('layouts.user_footer')
