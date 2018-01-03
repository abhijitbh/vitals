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
                    <a href="{{ url('/assesment') }}">
                    <i class="pe-7s-user"></i>
                    <p>Add-Assesment</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>


@include('layouts.admin_center')



<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="header">
                <h4 class="title">Add Assessment</h4>
                <button type="button" class="btn btn-primary btn-lg assesment" data-toggle="modal" data-target="#myModal">Create Assessment
                </button>
            </div>
        <div class="content table-responsive table-full-width">
        <table class="table table-hover table-striped">
        <thead>
        <th>ID</th>
        <th>Name</th>
        <th>Location</th>
        <th>Version Number</th>
        <th>Enhanced-Comments</th>
       </thead>
      <tbody>
    <tr>
    @foreach($assesment as $ass)
      <td>{{ $ass->id }}</td>
      <td>{{ $ass->name }}</td>
      <td>{{ $ass->location }}</td>
      <td>{{ $ass->version_number }}</td>
      <td>{{ $ass->enchanced_comments }} </td>
      <td><a href="{{ URL::to('/edit/assesment/'.$ass->id) }}">Edit Assessment</a>
      </td>
    </tr>
    @endforeach
    </tbody>
</table>
</div>
</div>
</div>
</div>
</div>




<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="false" style="position: absolute;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Create Assessment</h4>
      </div>
    <div class="modal-body">
        <h5>Basic Details</h5>
        <form method="POST" id="Save">
            {{ csrf_field() }}

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="assetname" value="" class="form-control" placeholder="Asset Name">
                    @if ($errors->has('assetname'))
                    <span class="help-block">
                        <strong>{{ $errors->first('assetname') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>


        <div class="checkbox">
            <label><input type="checkbox" value=" " checked="true">Used For Billing</label>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="list">Assessment Location</label>
                    <select class="form-control" id="list" name="list">
                    <option>Top</option>
                    <option>Bottom</option>
                    <option>Left</option>
                    <option>Right</option>
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
        $( '#name-error' ).html( "" );
        $( '#email-error' ).html( "" );
        $( '#password-error' ).html( "" );
         $('#myModal').modal('toggle');
        $.ajax({
            url:'/assesment',
            type:'POST',
            data:formData,
            success:function(data) {
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
                        $('#Save').modal('hide');
                        $('#success-msg').addClass('hide');
                    }, 3000);
                }

              window.location.replace(data);
            },
        });
    });

</script>
</html>
