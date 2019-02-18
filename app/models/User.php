<?php

namespace App\models;
use Illuminate\Database\Eloquent\Model;

class User extends Model {

    protected $table = 'User';

    public static function createUser($form_data){
      $user = new User;
      $user->name = $form_data['name'];

      dd($user, $form_data, $form_data['name']);
      return $user->save();
    }

}
