<?php


namespace App\Http\Controllers\Api;


use App\Http\Controllers\Controller;
use App\Models\TabelVendor;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;

class TabelVendorController extends Controller
{
    public function index()
    {
        // Get all cargo
        $vendor = TabelVendor::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $vendor);
    }
}
