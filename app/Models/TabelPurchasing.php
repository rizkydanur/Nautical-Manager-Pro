<?php

namespace App\Models;

use App\Models\TabelKapal;
use App\Models\TabelUser;
use Illuminate\Database\Eloquent\Model;

class TabelPurchasing extends Model
{
    protected $table = 'tabel_purchasing';

    protected $fillable = [
        'id_user', 'id_kapal', 'id_list_barang', 'total_anggaran', 'status',
    ];

    // Relasi ke tabel_user
    public function user()
    {
        return $this->belongsTo(TabelUser   ::class, 'id_user', 'id');
    }

    // Relasi ke tabel_kapal
    public function kapal()
    {
        return $this->belongsTo(TabelKapal::class, 'id_kapal', 'id_kapal');
    }

    // Relasi ke tabel_list_barang
    public function listBarang()
    {
        return $this->belongsTo(TabelListBarang::class, 'id_list_barang', 'id_list_barang');
    }


}
