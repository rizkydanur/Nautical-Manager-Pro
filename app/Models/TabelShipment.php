<?php

namespace App\Models;

use App\Models\TabelKapal;
use App\Models\TabelUser;
use Illuminate\Database\Eloquent\Model;

class TabelShipment extends Model
{
    protected $table = 'tabel_shipment';

    protected $fillable = [
        'id_kapal', 'id_cargo', 'id_user', 'id_shipper', 'rute', 'harga',
    ];

    // Relasi ke table_kapal
    public function kapal()
    {
        return $this->belongsTo(TabelKapal::class, 'id_kapal', 'id_kapal');
    }

    // Relasi ke table_cargo
    public function cargo()
    {
        return $this->belongsTo(TabelCargo::class, 'id_cargo', 'id_cargo');
    }

    // Relasi ke table_user
    public function user()
    {
        return $this->belongsTo(TabelUser::class, 'id_user', 'id');
    }

    // Relasi ke table_shipper
    public function shipper()
    {
        return $this->belongsTo(TabelShipper::class, 'id_shipper', 'id_shipper');
    }


}
