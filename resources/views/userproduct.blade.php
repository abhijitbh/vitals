@extends('layouts.admin_header')

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

                <li class="">
                    <a href="{{ url('/assesment') }}">
                    <i class="pe-7s-user"></i>
                    <p>Add-Assesment</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>

  @include('layouts.admin_center')


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
      <td>{{ $usr->country }} </td>

      <td><a class="btn btn-info btn-fill" href="{{ URL::to('module/'.$usr->id) }}" role="button">Select a Module</a>
      </td>
      <td>
        <div class="btn-group" id="status" data-toggle="buttons">
          @if($usr->status == 0 )
            <input type="button" value="Approve" data="{{ $usr->id }}" class="toggle-type approve_button btn btn-primary user-button" >
          @else
            <input type="button" value="Unapprove" data="{{ $usr->id }}" class="toggle-type unapprove_button btn btn-primary user-button" >
          @endif
        </div>
      </td>
    </tr>
    @endforeach
    </tbody>
    </table>

</div>


   @include('layouts.admin_footer')


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
    clicked = true;

    $(".approve_button").click(function(){
      var $id = $(this).attr('data');
      console.log($id);
        $.ajax({
            headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
          method: "POST",
          url: "approveuser/"+ $id+"/1",
        })
        .done(function(response) {
          location.reload();
        });
    });

     $(".unapprove_button").click(function(){
       var $id = $(this).attr('data');
       console.log($id);
        $.ajax({
          headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          },
          method: "POST",
          url: "approveuser/"+ $id+"/0",
        })
        .done(function( msg ) {
          location.reload();
        });

    });
});
</script>>

</html>
