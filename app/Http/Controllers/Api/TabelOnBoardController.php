<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TabelOnBoard;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;

class TabelOnBoardController extends Controller
{
    public function index()
    {
        // Get all cargo
        $onboard = TabelOnBoard::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $onboard);
    }
}
