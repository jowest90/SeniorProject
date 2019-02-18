<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use View;

class exampleController extends BaseController
{
    public function showExample(){
        $number = 1;
        $name = "test";
        
        
        return View::make('test', [
            'number' => $number, 
            'name'=> $name ]);
    }
    
}
