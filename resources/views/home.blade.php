@extends('layouts.userLayout')

@section('content')
<div class="col-md-10 col-md-offset-1">

  <div class="panel panel-default">

      <div class="panel-heading"><b>Profile:</b> {{ Auth::user()->username }}

        <a href="<?php echo url('/profile/edit/'.Auth::user()->id); ?>">(edit)</a>
      </div>

      <div class="panel-body">
        <b>Name:</b> {{ Auth::user()->name }}<br>
        <b>Email:</b> {{ Auth::user()->email }}<br>
        <b>Certification:</b> {{ Auth::user()->certification }}<br>
      </div>
  </div>

</div>


@endsection
