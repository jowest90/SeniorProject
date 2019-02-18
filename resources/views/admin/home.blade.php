@extends('layouts.adminLayout')

@section('content')
<div class="col-md-8 col-md-offset-2">
    <div class="panel panel-default">

      <div class="panel-heading"><b>Profile:</b>

        <a href="<?php echo url('/admin/profile/edit/'.Auth::guard('admin')->user()->id); ?>">(edit)</a>
      </div>

      <div class="panel-body">
        <b>Name:</b> {{ Auth::guard('admin')->user()->name }}<br>
        <b>Email:</b> {{ Auth::guard('admin')->user()->email }}<br>
      </div>
      </div>

      <div class="panel panel-default">
        <div class="panel-heading"><b>ADMIN Dashboard:</b></div>

        <div class="panel-body">
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif


        </div>
    </div>
</div>
@endsection
