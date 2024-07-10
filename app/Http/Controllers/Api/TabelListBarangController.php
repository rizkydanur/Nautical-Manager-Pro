<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TabelListBarang;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;

class TabelListBarangController extends Controller
{
    public function index()
    {
        // Get all cargo
        $listbarang = TabelListBarang::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $listbarang);
    }
}
