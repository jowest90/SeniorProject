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
      <form class="form-horizontal" method="POST" action="{{ url('/admin/state/edit') }}">
          {{ csrf_field() }}
          
          <input name='id' type="hidden" value="{{$state->id}}">
          
          <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
              <label for="name" class="col-md-4 control-label">Name</label>

              <div class="col-md-6">
                  <input id="name" type="text" class="form-control" name="name" value="<?php
                         if(old('name') != null){
                            echo old('name');
                         }else if($state->name != null){
                             echo $state->name;
                         }
                         ?>" required autofocus>
                  
                  @if ($errors->has('name'))
                      <span class="help-block">
                          <strong>{{ $errors->first('name') }}</strong>
                      </span>
                  @endif
              </div>
          </div>

          <div class="form-group{{ $errors->has('text') ? ' has-error' : '' }}">
              <label for="text" class="col-md-4 control-label">Text</label>

              <div class="col-md-6">
                  <textarea  id="text" type="text" class="form-control" name="text" ><?php
                         if(old('text') != null){
                            echo old('text');
                         }else if($state->text != null){
                             echo $state->text;
                         }
                    ?></textarea>
                  @if ($errors->has('password'))
                      <span class="help-block">
                          <strong>{{ $errors->first('text') }}</strong>
                      </span>
                  @endif
              </div>
          </div>
          <div class="form-group{{ $errors->has('start') ? ' has-error' : '' }}">
              <label for="start" class="col-md-4 control-label">Start State Flag</label>

              <div class="col-md-6">
                  <input id="start" type="number" class="form-control" name="start" min="0" max="1" value="<?php
                         if(old('start') != null){
                            echo old('start');
                         }else{
                            echo $state->start_state;
                         }
                         ?>" required autofocus>
                  
                  @if ($errors->has('name'))
                      <span class="help-block">
                          <strong>{{ $errors->first('start') }}</strong>
                      </span>
                  @endif
              </div>
          </div>
          
          <div class="form-group{{ $errors->has('goal') ? ' has-error' : '' }}">
              <label for="goal" class="col-md-4 control-label">Goal State Flag</label>

              <div class="col-md-6">
                  <input id="goal" type="number" class="form-control" name="goal" min="0" max="1" value="<?php
                         if(old('goal') != null){
                            echo old('goal');
                         }else{
                             echo $state->goal_state;
                         }
                         ?>" required autofocus>
                  
                  @if ($errors->has('name'))
                      <span class="help-block">
                          <strong>{{ $errors->first('goal') }}</strong>
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
