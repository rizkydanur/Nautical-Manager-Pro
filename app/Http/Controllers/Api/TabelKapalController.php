<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TabelKapal;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;

class TabelKapalController extends Controller
{
    public function index()
    {
        // Get all cargo
        $kapal = TabelKapal::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $kapal);
    }
}
