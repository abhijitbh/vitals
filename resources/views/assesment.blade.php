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
                <li class="">
                    <a href="{{ url('/userproduct') }}">
                    <i class="pe-7s-user"></i>
                    <p>UserProduct</p>
                    </a>
                </li>

                <li class="active">
                    <a href="{{ url('/add-assesment') }}">
                    <i class="pe-7s-user"></i>
                    <p>Add-Assesment</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>


@include('layouts.admin_center')


<!-- <div class="content">
    <div class="build-wrap"></div>
    <div class="render-wrap"></div>
    <button id="edit-form">Edit Form</button>
</div> -->


<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg assesment" data-toggle="modal" data-target="#myModal">
 Create Assessment
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="false" style="position: absolute;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Create Assessment</h4>
      </div>
    <div class="modal-body">
        <h5>Basic Datails</h5>
        <form method="POST" id="Save">
            {{ csrf_field() }}

        <div class="checkbox">
            <label><input type="checkbox" value=" " checked>Used For Billing</label>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="list">Assessment Location</label>
                    <select class="form-control" id="list" name="list">
                    <option>Baner</option>
                    <option>Warje</option>
                    <option>Kothrud</option>
                    <option>Sinhgad</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Version Number</label>
                    <input type="text" name="version" value="" class="form-control" placeholder="Version Number">
                    @if ($errors->has('version'))
                    <span class="help-block">
                        <strong>{{ $errors->first('version') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="comment">Enhanced Comment</label>
                    <textarea class="form-control" rows="5" id="comment" name="comment"></textarea>
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


<!-- <script src="{{ asset('forms/assets/js/jquery.min.js') }}"></script>
<script src="{{ asset('forms/assets/js/form-builder.min.js') }}"></script>
<script src="{{ asset('forms/assets/js/form-render.min.js') }}"></script>
<script src="{{ asset('forms/assets/js/demo.js') }}"></script> -->


<script type="text/javascript">
    $('body').on('click', '#submitForm', function(){
        var registerForm = $("#Save");
        var formData = registerForm.serialize();
        console.log(formData);
        $( '#name-error' ).html( "" );
        $( '#email-error' ).html( "" );
        $( '#password-error' ).html( "" );

        $.ajax({
            url:'/add-assesment',
            type:'POST',
            data:formData,
            success:function(data) {
                console.log(data);
                if(data.errors) {
                    if(data.errors.name){
                        $( '#name-error' ).html( data.errors.name[0] );
                    }
                    if(data.errors.email){
                        $( '#email-error' ).html( data.errors.email[0] );
                    }
                    if(data.errors.password){
                        $( '#password-error' ).html( data.errors.password[0] );
                    }

                }
                if(data.success) {
                    $('#success-msg').removeClass('hide');
                    setInterval(function(){
                        $('#SignUp').modal('hide');
                        $('#success-msg').addClass('hide');
                    }, 3000);
                }
            },
        });
    });
</script>
</html>
