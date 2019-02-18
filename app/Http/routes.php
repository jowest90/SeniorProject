<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
| How to set up a simple route:
| Route::get('Name of .blade' 'Name of Controller@ Name of Function');
| Controllers are located in the HTTP folder under the app folder.
|
*/

Route::auth();

//------------------------USER PAGES--------------------------------------------
    Route::get('/', 'HomeController@index');
    Route::get('/home', 'HomeController@index');
    Route::get('/scenario', 'HomeController@scenario');
    Route::get('/results', 'HomeController@results');
    Route::get('/help', 'HomeController@help');
    Route::get('/extra', 'HomeController@extra');

    //Profile settings
    Route::get('/profile/edit/{id}', "HomeController@edit");
    Route::post('/profile/update', "HomeController@update");
//------------------------------------------------------------------------------

//------------------------ADMIN PAGES-------------------------------------------
Route::get('/admin', 'AdminController@index');
Route::group(['prefix' => 'admin'], function() {
    Route::auth();

    //ADMIN HOME
    Route::get('/', 'AdminController@index');

    //ADMIN LOGIN
    Route::get('/login', 'Auth\AdminAuthController@showLoginForm');
    Route::post('/login', 'Auth\AdminAuthController@login');
    Route::get('/logout', 'AdminController@AdminLogout');

    //ADMIN USER REGISTRATION
    Route::get('/createUser', 'AdminController@createUser');
    Route::post('/createUser', 'AdminController@addUser');

    //ADMIN REGISTRATION
    Route::get('/createAdmin', 'AdminController@createAdmin');
    Route::post('/createAdmin', 'AdminController@addAdmin');

    //ADMIN RESET PASSWORD
    Route::get('/password/reset/{token?}', 'Auth\AdminPasswordController@showResetForm');
    Route::post('/password/email', 'Auth\AdminPasswordController@sendResetLinkEmail');
    Route::post('/password/reset', 'Auth\AdminPasswordController@reset');

  //ADMIN Profile settings
  Route::get('/profile/edit/{id}', "AdminController@edit");
  Route::post('/profile/update', "AdminController@update");

  //EDIT USERS
  Route::get('/editUser/edit/{id}', "AdminController@editUser");
  Route::post('/editUser/update', "AdminController@updateUser");

  //DESTROY User
  Route::get('/user/delete/{id}', "AdminController@deleteUser");

  //ADMIN view user info
  Route::get('/usersview', "AdminController@showUsers");
  Route::get('/userscores/{id}', "AdminController@showUserScores");
    
    //view all scenario related stufff
  Route::get('/view/scenarios', 'ScenarioController@showScenarios');
  Route::get('/view/states/{scenario_id}', 'ScenarioController@showStates');
  Route::get('/view/options/{scenario_id}/{state_id}', 'ScenarioController@showOptions');
  
  //
  Route::get('/scenario/edit/{scenario_id}', "ScenarioController@showEditScenario");
  Route::post('/scenario/edit', "ScenarioController@editScenario");
  
  Route::get('/state/edit/{state_id}', "ScenarioController@showEditState");
  Route::post('/state/edit', "ScenarioController@editState");
  
  Route::get('/option/edit/{option_id}', "ScenarioController@showEditOption");
  Route::post('/option/edit', "ScenarioController@editOption");
  
    
});
//------------------------------------------------------------------------------

//------------------------SCENARIOS--------------------------------------------
//routes for moving through states
Route::post('/start', array(
    'as' => 'beginScenario',
    'uses'  => 'stateController@beginScenario',
));
Route::get('/state/{scenario}/{state_id}', array(
    'as' => 'state',
    'uses'  => 'stateController@showState',
));
Route::post('/stateChange/', array(
    'as' => 'stateChange',
    'uses'  => 'stateController@changeState',
));

Route::post('/option/{option_id}', array(
    'as' => 'option',
    'uses'  => 'Controller@function',
));

Route::get('/success', array(
    'uses'  => 'stateController@showSuccess',
));
Route::get('/failure', array(
    'uses'  => 'stateController@showFailure',
));
//------------------------------------------------------------------------------
