@extends('layouts.adminLayout')

@section('content')
<div class="col-md-8 col-md-offset-2">
    <h1>Scenarios</h1>

    <table class="table table-bordered">
      <thead>
        <tr>
          <th>Name</th>
          <th>Description</th>
          <th>Options</th>
        </tr>
      </thead>
      <tbody>

        @foreach($scenarios as $scenario)
        <tr>
          <td>{!! $scenario->name !!} </td>
          <td>{!! $scenario->info !!}</td>
          <td>
              <a href='{{ url('/admin/view/states/'.$scenario->id) }}'>View States</a>&nbsp&nbsp&nbsp<a href="<?php echo url('/admin/scenario/edit/'.$scenario->id); ?>">Edit</a>
          </td>
        </tr>
        @endforeach

      </tbody>
    </table>

</div>

@endsection