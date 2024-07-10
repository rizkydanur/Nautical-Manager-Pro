<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TabelUser extends Model
{
    use HasFactory;

    protected $table = 'tabel_user';

    protected $fillable = [
        'nama_user',
        'email',
        'jabatan',
        'status',
    ];


}
