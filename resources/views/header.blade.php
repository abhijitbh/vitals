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
                <a class="btn btn-info" href="{{  url('/assesment') }}">Back</a>
            </li>

            <li>
               <a data-toggle="modal" data-target="#myModal">Create Header</a>
            </li>

            @foreach($header as $head)
            <li>
                <i style="width: 80px;line-height: 40px;" class="pe-7s-graph"></i>
                <a href="{{ URL::to('headers/'.$head->id) }}">{{ $head->name }}
                </a>
            </li>
            @endforeach

            </ul>
        </div>
    </div>



@include('layouts.admin_center')

<div class="container">
   <h5>Test Assesment</h5>
    <div class="row">
        <div class="col-sm-4">
            <div class="checkbox">
                <label><input type="checkbox" checked>Used For Billing</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" checked>Show Ponits</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" checked>Archieves</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" checked>Archieves Reports</label>
            </div>
        </div>
         <div class="col-sm-4">
            <div class="checkbox">
                <label><input type="checkbox" checked>Used For Billing</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" checked>Show Ponits</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" checked>Archieves</label>
            </div>
            <div class="radio">
                <label><input type="radio" checked>Archieves Reports</label>
            </div>
        </div>
         <div class="col-sm-4">
            <div class="checkbox">
                <label><input type="checkbox" checked>Used For Billing</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" checked>Show Ponits</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" checked>Archieves</label>
            </div>
            <div class="checkbox">
                <label><input type="checkbox" checked>Archieves Reports</label>
            </div>
        </div>
    </div>
    <!-- Modal Button -->
    <div class="row">
        <div class="col-sm-offset-8 col-sm-4"><a data-toggle="modal" data-target="#question" class="btn btn-primary">Add Question</a></div>
    </div>
</div>


 <div class="content table-responsive">
    <table class="table table-striped">
    <thead>
        <th>Topic</th>
        <th>Question</th>
        <th>Data</th>
        <th>Answer</th>
        <th>Action</th>
    </thead>
    @if (isset($quetions) && count($quetions) > 0)
    <tbody>
        <tr>
        @foreach($quetions as $que)
          <td>{{ $que-> topic }}</td>
          <td>{{ $que->question_text }}</td>
          <td>{{ $que->question_data }}</td>
          <td>{{ $que-> answer_explanation }} </td>
          <td><a class="btn btn-primary" href="{{ URL::to('question/'.$que->id) }}
          " role="button">Delete</a></td>
            <td><button class="edit-modal btn btn-primary" data-id="{{$que->id}}">Edit</button></td>
        </tr>
        @endforeach
    </tbody>
    @else
            <tbody>
            <tr><td colspan="5" style="text-align: center; ">No questions has been added yet.</td></tr>
            </tbody>
    @endif
    </table>
</div>

<!-- Header Modal Start -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="false" style="position: absolute;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Add Header</h4>
      </div>
    <div class="modal-body">
        <h5>Header name</h5>
        <form method="POST" id="Save">
            {{ csrf_field() }}

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="header" class="form-control" placeholder="Header name">
                    @if ($errors->has('header'))
                    <span class="help-block">
                        <strong>{{ $errors->first('header') }}</strong>
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
<!-- Header Modal End -->

<!-- Question Modal Start -->
<div class="modal fade" id="question" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="false" style="position: absolute;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Add Question</h4>
      </div>
    <div class="modal-body">
        <h5>Create</h5>
        <form method="POST" id="Save_Question">
            {{ csrf_field() }}

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Your Topic</label>
                    <input type="text" name="topic" id="topic" class="form-control" placeholder="Topic name">
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
                    <input type="text" name="option[]" class="form-control">
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
                    <input type="text" name="option[]" class="form-control">
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
                    <input type="text" name="option[]" class="form-control">
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
                    <input type="text" name="option[]" class="form-control">
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
                    <input type="text" name="option[]" class="form-control">
                    @if ($errors->has('option5'))
                    <span class="help-block">
                        <strong>{{ $errors->first('option5') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="comment">Question Data</label>
                    <textarea class="form-control" rows="5"  id="question_data" name="question_data"></textarea>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="comment">Answer Explanation</label>
                    <textarea class="form-control" rows="5"  id="answer_exp" name="answer_exp"></textarea>
                </div>
            </div>
        </div>


        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" id="submitQuestion" class="btn btn-primary">Save changes</button>
       </div>

    </form>
    </div>
  </div>
</div>
</div>

<!-- Question Modal End -->



<!-- Edit Question Modal Start -->
<div class="modal fade" id="edit_question" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="false" style="position: absolute;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Edit Question</h4>
      </div>
    <div class="modal-body">
        <h5>Create</h5>
        <form method="POST" id="Edit_Save_Question">
            {{ csrf_field() }}

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>Your Topic</label>
                    <input type="text" name="topic" id="topic" class="form-control" placeholder="Topic name">
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
                    <input type="text" name="option[]" class="form-control">
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
                    <input type="text" name="option[]" class="form-control">
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
                    <input type="text" name="option[]" class="form-control">
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
                    <input type="text" name="option[]" class="form-control">
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
                    <input type="text" name="option[]" class="form-control">
                    @if ($errors->has('option5'))
                    <span class="help-block">
                        <strong>{{ $errors->first('option5') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="comment">Question Data</label>
                    <textarea class="form-control" rows="5"  id="question_data" name="question_data"></textarea>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="comment">Answer Explanation</label>
                    <textarea class="form-control" rows="5"  id="answer_exp" name="answer_exp"></textarea>
                </div>
            </div>
        </div>


        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" id="submitQuestion" class="btn btn-primary">Save changes</button>
       </div>

    </form>
    </div>
  </div>
</div>
</div>

<!-- Edit Question Modal End -->

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

<script type="text/javascript">
    $('body').on('click', '#submitForm', function(){
        var registerForm = $("#Save");
        var formData = registerForm.serialize();
        console.log(formData);
        $( '#name-error' ).html( "" );
         $('#myModal').modal('toggle');
        $.ajax({
            url:'/header',
            type:'POST',
            data:formData,
            success:function(data) {
                console.log(data);
                if(data.errors) {
                    if(data.errors.name){
                        $( '#name-error' ).html( data.errors.name[0] );
                    }

                }
                if(data.success) {
                    $('#success-msg').removeClass('hide');
                    setInterval(function(){
                        $('#Save').modal('hide');
                        $('#success-msg').addClass('hide');
                    }, 3000);
                }
            },
        });
        location.reload();
    });
</script>
<script type="text/javascript">
var url = window.location.pathname;
var id = url.substring(url.lastIndexOf('/') + 1);
    $('body').on('click', '#submitQuestion', function(){
        var registerForm = $("#Save_Question");
        var formData = registerForm.serialize();
        $( '#name-error' ).html( "" );
        $('#question').modal('toggle');
        $.ajax({
            url:'/question/'+id,
            type:'POST',
            data:formData,
            success:function(data) {
                if(data.errors) {
                    if(data.errors.name){
                        $( '#name-error' ).html( data.errors.name[0] );
                    }

                }
                if(data.success) {
                    $('#success-msg').removeClass('hide');
                    setInterval(function(){
                        $('#Save_Question').modal('hide');
                        $('#success-msg').addClass('hide');
                    }, 3000);
                }
            },
        });
        location.reload();
    });
</script>
<script type="text/javascript">
$(document).on('click', '.edit-modal', function() {
    //var url = 'question/';
    var id=$(this).data('id');
    /*$.ajax({
            url: url+id,
            method: 'GET',
            success:function(data) {
            console.log(data);
        }
    });*/*/
    $('#edit_question').modal('show');
    });
</script>
</html>

