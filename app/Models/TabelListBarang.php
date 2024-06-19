<?php

namespace App;

use App\Models\TabelVendor;
use Illuminate\Database\Eloquent\Model;

class TabelListBarang extends Model
{
    protected $table = 'tabel_list_barang';

    protected $fillable = [
        'id_vendor_barang', 'nama_barang', 'harga_barang', 'tanggal_expired',
    ];

    // Relasi ke table_vendor
    public function vendor()
    {
        return $this->belongsTo(TabelVendor::class, 'id_vendor_barang', 'id');
    }
}
