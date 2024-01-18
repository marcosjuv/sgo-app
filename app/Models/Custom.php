<?php
// aduana
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Custom extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'observation',
        'active'
    ];

    public function operations(){
       return $this->hasMany(Operation::class);
    }
}
