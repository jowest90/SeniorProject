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
      <form class="form-horizontal" method="POST" action="{{ url('/admin/option/edit') }}">
          {{ csrf_field() }}
          
          <input name='id' type="hidden" value="{{$option->id}}">
          
          <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
              <label for="name" class="col-md-4 control-label">Name</label>

              <div class="col-md-6">
                  <input id="name" type="text" class="form-control" name="name" value="<?php
                         if(old('name') != null){
                            echo old('name');
                         }else if($option->name != null){
                             echo $option->name;
                         }
                         ?>" required autofocus>
                  
                  @if ($errors->has('name'))
                      <span class="help-block">
                          <strong>{{ $errors->first('name') }}</strong>
                      </span>
                  @endif
              </div>
          </div>
          
          <div class="form-group{{ $errors->has('next') ? ' has-error' : '' }}">
              <label for="next" class="col-md-4 control-label">Next State Id</label>

              <div class="col-md-6">
                  <input id="next" type="number" class="form-control" name="next" min="1" value="<?php
                         if(old('next') != null){
                            echo old('next');
                         }else{
                             echo $option->next_state_id;
                         }
                         ?>" required autofocus>
                  
                  @if ($errors->has('name'))
                      <span class="help-block">
                          <strong>{{ $errors->first('next') }}</strong>
                      </span>
                  @endif
              </div>
          </div>

          <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
              <label for="description" class="col-md-4 control-label">Description</label>

              <div class="col-md-6">
                  <textarea  id="description" type="text" class="form-control" name="description" ><?php
                         if(old('description') != null){
                            echo old('description');
                         }else if($option->description != null){
                             echo $option->description;
                         }
                    ?></textarea>
                  @if ($errors->has('password'))
                      <span class="help-block">
                          <strong>{{ $errors->first('description') }}</strong>
                      </span>
                  @endif
              </div>
          </div>
          
          <div class="form-group{{ $errors->has('correct') ? ' has-error' : '' }}">
              <label for="correct" class="col-md-4 control-label">Correctness Flag</label>

              <div class="col-md-6">
                  <input id="correct" type="number" class="form-control" name="correct" min="0" max="1" value="<?php
                         if(old('correct') != null){
                            echo old('correct');
                         }else{
                            echo $option->correct;
                         }
                         ?>" required autofocus>
                  
                  @if ($errors->has('name'))
                      <span class="help-block">
                          <strong>{{ $errors->first('correct') }}</strong>
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
