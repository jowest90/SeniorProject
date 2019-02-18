<?php

namespace App\Http\Controllers;

use App\models\Scenario;
use App\models\State;
use App\models\Options;

use View, Session, Input;

class ScenarioController extends Controller
{
    public function showScenarios(){
        $scenarios = Scenario::get();
        
        return View::make('admin.viewscenarios', [
            'scenarios'  => $scenarios ]);
    }
    
    public function showStates($scenario_id){
        $states = State::where('Scenario_id', $scenario_id)->get();
        
        return View::make('admin.viewstates', [
            'states'  => $states ]);
    }
    
    public function showOptions($scenario_id, $state_id){
        $options = Options::where('Scenario_id', $scenario_id)
                        ->where('State_id', $state_id)
                        ->get();
        return View::make('admin.viewoptions', [
            'options'  => $options ]);
    }
    
    //editing scenarios
    public function showEditScenario($scenario_id){
        $scenario = Scenario::find($scenario_id);
        
        return View::make('admin.editscenario', [
            'scenario'  => $scenario ]);
    }
    public function editScenario(){
        $form_data = Input::all();
        
        $scenario = Scenario::find($form_data['id']);
        if($scenario != null){
            $scenario->name = $form_data['name'];
            $scenario->info = $form_data['info'];
            $scenario->save();
        }
        
        return redirect()->back();
    }
    
    //editing states
    public function showEditState($state_id){
        $state = State::find($state_id);
        
        return View::make('admin.editstate', [
            'state'  => $state ]);
    }
    public function editState(){
        $form_data = Input::all();
        
        $state = State::find($form_data['id']);
        if($state != null){
            $state->name = $form_data['name'];
            $state->text = $form_data['text'];
            $state->start_state = $form_data['start'];
            $state->goal_state = $form_data['goal'];
            $state->save();
        }
        return redirect()->back();
    }
    
    //editing states
    public function showEditOption($option_id){
        $option = Options::find($option_id);
        
        return View::make('admin.editoption', [
            'option'  => $option ]);
    }
    public function editOption(){
        $form_data = Input::all();
        
        $option = Options::find($form_data['id']);
        if($option != null){
            $option->name = $form_data['name'];
            $option->next_state_id = $form_data['next'];
            $option->description = $form_data['description'];
            $option->correct = $form_data['correct'];
            $option->save();
        }
        return redirect()->back();
    }
}
