@extends('layouts.admin_header')

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="{{ asset('img/sidebar-5.jpg') }}">

        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="{{ url('/home') }}" class="simple-text">
                   <span><img src="{{ asset('/img/vitals.png') }}"></img></span>
                </a>
            </div>

            <ul class="nav">

             <li>
               <a data-toggle="modal" data-target="#myModal">Add Question</a>
            </li>

            </ul>
        </div>
    </div>


@include('layouts.admin_center')

<div class="container">
  <h5>{{$heads->name}}</h5>
</div>


<!-- Modal -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="false" style="position: absolute;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Add Question</h4>
      </div>
    <div class="modal-body">
        <h5>Create</h5>
        <form method="POST" id="Save">
            {{ csrf_field() }}

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Your Topic</label>
                    <input type="text" name="topic" class="form-control" placeholder="Topic name">
                    @if ($errors->has('topic'))
                    <span class="help-block">
                        <strong>{{ $errors->first('topic') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="comment">Questions Text</label>
                    <textarea class="form-control" rows="5"  id="question_text" name="question_text"></textarea>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Option #1</label>
                    <input type="text" name="option1" class="form-control">
                    @if ($errors->has('option1'))
                    <span class="help-block">
                        <strong>{{ $errors->first('option1') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Option #2</label>
                    <input type="text" name="option2" class="form-control">
                    @if ($errors->has('option2'))
                    <span class="help-block">
                        <strong>{{ $errors->first('option2') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Option #3</label>
                    <input type="text" name="option3" class="form-control">
                    @if ($errors->has('option3'))
                    <span class="help-block">
                        <strong>{{ $errors->first('option3') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Option #4</label>
                    <input type="text" name="option4" class="form-control">
                    @if ($errors->has('option4'))
                    <span class="help-block">
                        <strong>{{ $errors->first('option4') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Option #5</label>
                    <input type="text" name="option5" class="form-control">
                    @if ($errors->has('option5'))
                    <span class="help-block">
                        <strong>{{ $errors->first('option5') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>








      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" id="submitForm" class="btn btn-primary">Save changes</button>
      </div>
    </form>
    </div>
  </div>
</div>
</div>


@include('layouts.admin_footer')

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

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="{{ asset('js/demo.js') }}"></script>
</html>