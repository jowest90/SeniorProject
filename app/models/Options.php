<?php

namespace App\models;
use Illuminate\Database\Eloquent\Model;

class Options extends Model {

    protected $table = 'options';

    
    public static function getOptions($scenario_id, $state_id){
        $options = self::where('Scenario_id', $scenario_id)
                ->where('State_id', $state_id)
                ->get();
        return $options;
    }
    
}
