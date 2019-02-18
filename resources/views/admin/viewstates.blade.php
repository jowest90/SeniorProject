@extends('layouts.adminLayout')

@section('content')
<div class="col-md-8 col-md-offset-2">
    <h1>States</h1>

    <table class="table table-bordered">
      <thead>
        <tr>
          <th>Name</th>
          <th>Text</th>
          <th>Options</th>
        </tr>
      </thead>
      <tbody>

        @foreach($states as $state)
        <tr>
          <td>{!! $state->name !!} </td>
          <td>{!! $state->text !!}</td>
          <td>
              <a href='{{ url('/admin/view/options/'.$state->Scenario_id.'/'.$state->id) }}'>View Options</a>&nbsp&nbsp&nbsp<a href="<?php echo url('/admin/state/edit/'.$state->id); ?>">Edit</a>
          </td>
        </tr>
        @endforeach

      </tbody>
    </table>

</div>

@endsection