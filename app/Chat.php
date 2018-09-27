<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Chat extends Model
{
    public function getUserFrom() {
      return $this->hasOne('App\User', 'id', 'user_from')->first();
    }

    public function getUserTo() {
      return $this->hasOne('App\User', 'id', 'user_to')->first();
    }
}
