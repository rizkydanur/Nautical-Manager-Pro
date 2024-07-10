<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TabelShipper extends Model
{
    protected $table = 'tabel_shipper';

    protected $fillable = [
        'nama_shipper', 'alamat', 'no_telfon', 'email', 'status',
    ];



}
