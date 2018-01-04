@extends('layouts.admin_header')

<div class="wrapper">
  <div class="sidebar" data-color="purple" data-image="{{ asset('img/sidebar-5.jpg') }}">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


    <div class="sidebar-wrapper">
      <div class="logo">
        <a href="{{ url('/userproduct') }}" class="simple-text">
         <span><img src="{{ asset('/img/vitals.png') }}"></img></span>
       </a>
     </div>


     <ul class="nav" style="cursor: pointer;">

      <li>
        <i style="width: 80px;line-height: 40px;" class="pe-7s-angle-left-circle"></i>
        <a href="{{  URL::to('/edit/assesment/'.$assesmentId) }}" style="border: none;">Back</a>
      </li>
    </ul>
  </div>
</div>

@include('layouts.admin_center')

<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="header">
            <h4 class="title">Assesment</h4>
          </div>
          <hr>
          <div class="content">


            <form>
              @if(count($questions) > 0)
              <?php $i = 1; ?>
              @foreach($questions as $question)
              <div>
               <strong>Question {{ $i }}.<br />{!! nl2br($question->question_text) !!}</strong>
               <br>
               @foreach($question->options as $option)
               <br>
               <label class="radio-inline">
                <input type="radio" name="sss" value="answers[{{ $question->id }}]"> {{ $option->value }}
              </label>
              @endforeach
            </div>

            <hr>
            <?php $i++; ?>
            @endforeach
            @endif
            <!--   <h4 class="card-title">Card title</h4>
            <hr> -->

          </form>

        </div>
      </div>
    </div>
  </div>
</div>
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

</html>
