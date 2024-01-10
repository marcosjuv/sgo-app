<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    use HasFactory;

   public function states(){
      return $this->hasOne(State::class);
   }

   public function clientes(){
      return $this->hasMany(Client::class);
   }
}
