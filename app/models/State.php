<?php

namespace App\models;
use Illuminate\Database\Eloquent\Model;

class State extends Model {

    protected $table = 'state';

    public static function getScenarioStartState($scenario_id){
        $start_state = State::where('Scenario_id', $scenario_id)
                ->where('start_state', '1')
                ->first();
        return $start_state;
    }
    
}
