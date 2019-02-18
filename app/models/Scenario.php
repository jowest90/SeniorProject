<?php

namespace App\models;
use Illuminate\Database\Eloquent\Model;
use Session;
class Scenario extends Model {

    protected $table = 'scenario';

    public static function getScenarios(){
      return self::get();
    }

    public function createStartForm(){
        $scenario = self::find($this->id);
        echo '<form action="/TeamFC/public/index.php/start" method="post">';

            echo '<input type="hidden" name="scenario_id" value="'. $this->id .'" />';
            echo '<input type="hidden" name="_token" value="'. Session::token() .'" />';

        echo '</form>';
    }

    public function isBlocked(){
        if ($scenario_id->blocked_by != 0){
            //scenario is blocked by some scenario
            //get all compelted scenarios
            $completed = Completed::getCompletedForUser();
            //check completed scenarios for required scenario
            foreach($completed as $comp){
                if($comp->Scenario_id == $scenario_id->blocked_by){
                    //if required scenario is found, not blocked
                    return false;
                }
            }
            //if required scenario goe sunfound, returns true (blocked);
            return true;
        }
        //scenario is not blocked by any other scenario
        return false;
    }

}
?>
