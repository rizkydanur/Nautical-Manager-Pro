<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TabelInventory extends Model
{
    use HasFactory;

    protected $table = 'tabel_inventory';

    protected $fillable = [
        'id_kapal',
        'id_user',
        'id_vendor',
        'nama_barang',
        'qty_barang',
        'tanggal_terima',
    ];

    // Relationships
    public function kapal()
    {
        return $this->belongsTo(TabelKapal::class, 'id_kapal', 'id_kapal');
    }

    public function user()
    {
        return $this->belongsTo(TabelUser::class, 'id_user', 'id');
    }

    public function vendor()
    {
        return $this->belongsTo(TabelVendor::class, 'id_vendor', 'id');
    }
}
