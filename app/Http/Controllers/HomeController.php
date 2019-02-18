<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\User;
use App\Profile;
use Illuminate\Http\Request;
use Input;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function help()
    {
        return view('help');
    }

    public function extra()
    {
        return view('extra');
    }

    public function reset()
    {
    return view('auth.passwords.email');
    }

    public function edit($id)
    {
        $user = User::find($id);
        //dd($id);
        return view('profile', compact("user"));
    }

    public function update()
    {
      $form_data = Input::all();


      $user = User::find($form_data['id']);
      $user->name = $form_data['name'];
      $user->email = $form_data['email'];
      $user->certification = $form_data['certification'];
      $user->save();
      //dd($user);
      //$user->update($request->all());
       //dd($user);
      return redirect('/home');
    }
}
