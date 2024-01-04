<?php
// sucursal
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Office extends Model
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
