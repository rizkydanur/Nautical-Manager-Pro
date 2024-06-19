<?php

namespace App;

use App\Models\TabelKapal;
use App\Models\TabelUser;
use Illuminate\Database\Eloquent\Model;

class TabelOnBoard extends Model
{
    protected $table = 'tabel_on_board';

    protected $fillable = [
        'id_kapal', 'id_user',
    ];

    // Relasi ke tabel_kapal
    public function kapal()
    {
        return $this->belongsTo(TabelKapal::class, 'id_kapal', 'id_kapal');
    }

    // Relasi ke tabel_user
    public function user()
    {
        return $this->belongsTo(TabelUser::class, 'id_user', 'id');
    }
}
