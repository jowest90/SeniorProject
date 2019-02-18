@extends('layouts.adminLayout')
<style>
.Box {
border: 1px solid black;
text-align:center;
width:25%;
margin-top: 100px;
margin-left: 37%;
}
</style>
@section('content')
<div class="Box" id = "box">
  <div class="panel-body">
      <form class="form-horizontal" method="POST" action="{{ url('/admin/scenario/edit') }}">
          {{ csrf_field() }}
          
          <input name='id' type="hidden" value="{{$scenario->id}}">
          
          <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
              <label for="name" class="col-md-4 control-label">Name</label>

              <div class="col-md-6">
                  <input id="name" type="text" class="form-control" name="name" value="<?php
                         if(old('name') != null){
                            echo old('name');
                         }else if($scenario->name != null){
                             echo $scenario->name;
                         }
                         ?>" required autofocus>
                  
                  @if ($errors->has('name'))
                      <span class="help-block">
                          <strong>{{ $errors->first('name') }}</strong>
                      </span>
                  @endif
              </div>
          </div>

          <div class="form-group{{ $errors->has('info') ? ' has-error' : '' }}">
              <label for="info" class="col-md-4 control-label">Description</label>

              <div class="col-md-6">
                  <input id="info" type="text" class="form-control" name="info" value="<?php
                         if(old('info') != null){
                            echo old('info');
                         }else if($scenario->info != null){
                             echo $scenario->info;
                         }
                         ?>">

                  @if ($errors->has('password'))
                      <span class="help-block">
                          <strong>{{ $errors->first('info') }}</strong>
                      </span>
                  @endif
              </div>
          </div>

          <div class="form-group">
              <div class="col-md-6 col-md-offset-4">
                  <button type="submit" class="btn btn-primary">
                      Update
                  </button>
              </div>
          </div>
      </form>
  </div>
</div>
@endsection
