<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TabelCargo extends Model
{
    protected $table = 'tabel_cargo';

    protected $fillable = [
        'id_shipper', 'nama_barang', 'jumlah_barang', 'total_tonase', 'total_kubikasi',
    ];

    // Relasi ke table_shipper
    public function shipper()
    {
        return $this->belongsTo(TabelShipper::class, 'id_shipper', 'id_shipper');
    }


}
