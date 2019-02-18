<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\User;
use App\Profile;
use Illuminate\Http\Request;

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

    public function edit($id)
    {
        $user = User::find($id);
        //dd($user);
        return view('user.profile', compact("user"));
    }

    public function update(Request $request, $id)
    {
      $this->validate($request,array(
            'name' => 'required',
            'email' => 'required',
            'certification' => 'required'
        ));
      $user = User::find($id);
      //dd($user);
      $user->update($request->all());
       //dd($user);
      return redirect('/home');
    }
}
