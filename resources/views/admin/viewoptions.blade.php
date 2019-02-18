@extends('layouts.adminLayout')

@section('content')
<div class="col-md-8 col-md-offset-2">
    <h1>Options</h1>

    <table class="table table-bordered">
      <thead>
        <tr>
          <th>Name</th>
          <th>Text</th>
          <th>Options</th>
        </tr>
      </thead>
      <tbody>

        @foreach($options as $option)
        <tr>
          <td>{!! $option->name !!} </td>
          <td>{!! $option->description !!}</td>
          <td>
              <a href='{{ url('/admin/view/options/'.$option->Scenario_id.'/'.$option->next_state_id) }}'>Next State</a>&nbsp&nbsp&nbsp<a href="<?php echo url('/admin/option/edit/'.$option->id); ?>">Edit</a>
          </td>
        </tr>
        @endforeach

      </tbody>
    </table>

</div>

@endsection