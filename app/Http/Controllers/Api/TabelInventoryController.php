<?php


namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TabelInventory;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;

class TabelInventoryController extends Controller
{
    /**
     * Index method
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection
     */
    public function index()
    {
        // Get all cargo
        $inventory = TabelInventory::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $inventory);
    }


}
