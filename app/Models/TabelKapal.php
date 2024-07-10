<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TabelKapal extends Model
{
    use HasFactory;

    protected $table = 'tabel_kapal';

    protected $primaryKey = 'id_kapal';

    protected $fillable = [
        'nama_kapal',
        'tahun_pembuatan_kapal',
        'imo_number',
        'gross_ton_kapal',
        'dwt_kapal',
    ];


}
