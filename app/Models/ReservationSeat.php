<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ReservationSeat extends Model
{
    use HasFactory;

    protected $fillable = ['reservation_id', 'seat_id'];

    public $timestamps = false;

    public function seat(): BelongsTo {
        return $this->belongsTo(Seat::class);
    }

    public function reservation(): BelongsTo {
        return $this->belongsTo(Reservation::class);
    }
}
