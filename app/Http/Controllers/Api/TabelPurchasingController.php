<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TabelPurchasing;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;

class TabelPurchasingController extends Controller
{
    public function index()
    {
        // Get all cargo
        $purchasing = TabelPurchasing::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $purchasing);
    }
}

