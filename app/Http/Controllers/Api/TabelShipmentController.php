<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TabelShipment;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;


class TabelShipmentController extends Controller
{
    public function index()
    {
        // Get all cargo
        $shipment = TabelShipment::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $shipment);
    }
}
