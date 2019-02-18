<?php

namespace App\models;
use Illuminate\Database\Eloquent\Model;
use App\models\Scenario;
use Auth;

class Completed extends Model {

    protected $table = 'completed';

    public static function getCompletedForUser(){
        //get logged in user data
        $user = Auth::get();
        //gets all completed scenarios for the user
        $completed = self::where('user_id', $user)->get();
        
        return $completed;
    }

    public function getScenarioName(){
	return Scenario::where('id', $this->Scenario_id)->first()->name;
    }
	
	public static function newCompleted($score, $scenario_id){
		$obj = new self;
		$obj->user_id = Auth::user()->id;
		$obj->score = $score;
		$obj->scenario_id = $scenario_id;
;
		return $obj->save();
    	}
}
?>
