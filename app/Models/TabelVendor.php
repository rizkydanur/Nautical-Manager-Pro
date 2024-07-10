<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TabelVendor extends Model
{
    use HasFactory;

    protected $table = 'tabel_vendor';

    protected $fillable = [
        'nama_vendor',
        'vendor_barang',
        'alamat',
        'email',
        'no_tlfn',
    ];


}
