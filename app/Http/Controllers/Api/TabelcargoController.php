<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TabelCargo;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;

class TabelcargoController extends Controller
{
    /**
     * Index method
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index()
    {
        // Get all cargo
        $cargo = TabelCargo::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $cargo);
    }


}
