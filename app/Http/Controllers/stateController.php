<?php

namespace App\Http\Controllers;

use App\models\Scenario;
use App\models\State;
use App\models\Options;
use App\models\Completed;

use View, Session, Input;

class stateController extends Controller
{

    public function beginScenario($scenario_id=0){
        $form_data = Input::all();
        $scenario_id = $form_data['scenario_id'];

        /*
         * have checks in place to assure the user has access to the chosen scenario
         */
        $scenario = Scenario::find($scenario_id);
//        if($scenario->isBlocked()){
//            return Redirect();
//        }

        $start_state = State::getScenarioStartState($scenario_id);
        $state_id = $start_state->id;
        Session::put('scenario_id', $scenario_id);
        Session::put('state_id', $state_id);

        return StateController::showState();
    }

    public function showState() {
        $scenario_id = Session::get('scenario_id');
        $state_id = Session::get('state_id');

        $scenario = Scenario::find($scenario_id);
        $state = State::find($state_id);
        $options = Options::getOptions($scenario_id, $state_id);
        //dd($scenario, $state,$options );
        if(!self::validateState($scenario, $state, $options)){
            //invalid, must redirect
        }

        return View::make('state', [
            'scenario'  => $scenario,
            'state'     => $state,
            'options'   => $options ]);
    }

    public function changeState($state_id=0){
        if($state_id == 0){
            $form_data = Input::all();
            $state_id = $form_data['option'];
        }

        Session::put('state_id', $state_id);
        $state = State::find($state_id);
        //dd($form_data, $state, Session::all());
        if($state->goal_state == 1){
            //add code to do with calculating a score for section

            //redirect based on success or failure of scenario
            if($state->fail_state == 1){
              return redirect('failure');
            }else{
              return redirect('success');
            }
        }

        //tally if the option made was correct


        //if random type state will skip to next state in sequence
        if($state->auto == 1){
            $options = Options::getOptions(Session::get('scenario_id'), $state->id);
            foreach($options as $option){
                $rand = rand(1, 100);
//----------------------------------------------------------------------------------------	
//Creating a log file to check what value is causing wrong state to appear
		//$file = __DIR__.'/log.txt';
		//$current = file_get_contents($file);
		//$current .= $rand."\n";
		//file_put_contents($file, $current);
//----------------------------------------------------------------------------------------
                if($rand <= ($option->Percentage)){
                    self::changeState($option->next_state_id);
		    break;
                }
            }

        }

        return StateController::showState();
    }

    /*
     * validate the state to ensure no tampering or errors has occured
     */
    public function validateState($scenario, $state, $options){
        if($state->Scenario_id != $scenario->id){
            return false;
        }
        foreach($options as $option){
            if($option->Scenario_id != $scenario->id || $option->State_id != $state->id){
                return false;
            }
        }
        return true;
    }

    public function showSuccess(){
	    Completed::newCompleted(100, Session::get('scenario_id'));
      return View::make('success', []);
    }

    public function showFailure(){
	Completed::newCompleted(0, Session::get('scenario_id'));
      return View::make('failure', []);
    }
}
