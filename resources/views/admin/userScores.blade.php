@extends('layouts.adminLayout')

@section('content')
<div class="col-md-8 col-md-offset-2">
<h1>User Score</h1>
@if(!$scores->isEmpty())
<table class="table table-bordered">
  <thead>
    <tr>
      <th>Scenario</th>
      <th>Score</th>
    </tr>
  </thead>
  <tbody>
	@foreach($scores as $score)
    <tr>
      <td>{!! $score->getScenarioName() !!}</td>
      <td>{!! $score->score !!}</td>
    </tr>
	@endforeach
  </tbody>
</table>
@else
<h2>No recorded scores.</h2>
@endif
</div>
@endsection
