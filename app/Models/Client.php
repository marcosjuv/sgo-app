<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Client extends Model
{
    use HasFactory;
    protected $fillable = [
        'state_id',
        'city_id',
        'name',
        'rif',
        'address',
        'phone_number1',
        'phone_number2',
        'email',
        'contact_person',
        'position_contact',
        'comment',
        'active'
    ];

   /**
    * Get all of the comments for the Client
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */

   public function state(){
       return $this->belongsTo(State::class);
   }

   public function city(){
       return $this->belongsTo(City::class);
   }

   public function operation(){
        return $this->hasMany(Operation::class);
   } 
}
