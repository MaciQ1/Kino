<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Client extends Model
{
    use HasFactory;

    // protected $fillable = ['NAME', 'SURNAME', 'EMAIL', 'PHONE_NUMBER', 'PASSWORD'];

    // public $timestamps = false;

    // public function reservations(): HasMany {
    //     return $this->hasMany(Reservation::class);
    // }
}
