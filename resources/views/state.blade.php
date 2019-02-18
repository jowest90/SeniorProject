@extends('layouts.userLayout')
@section('content')
<div class="col-md-10 col-md-offset-1">
  <div class="panel panel-default">
      <div class="panel-heading"><h1>{!! $state->text !!}</h1></div>

      <div class="panel-body">
        <?php
        if($options != null){
            /*
             * must change this url to not include ther server.php once mod rewrite is working
             */
            echo '<form action="/public/index.php/stateChange" method="post">';

            foreach($options as $option){

                echo "<label><input type='radio' name='option', value=$option->next_state_id checked> $option->description</input></label><br>";

            }//end foreach()
            echo '<input type="hidden" name="_token" id="csrf-token" value="'. Session::token() .'" />';

            echo '<br><br>';
            echo '<input name=submit type=submit></input>';
            echo '</form>';
        }else{
            echo 'end';
        }
        ?>
      </div>
  </div>
</div>
@endsection
