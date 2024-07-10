<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TabelShipper;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;

class TabelShipperController extends Controller
{
    public function index()
    {
        // Get all cargo
        $shipper = TabelShipper::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $shipper);
    }
}
