<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\TabelUser;
use App\Http\Resources\PostResource;
use Illuminate\Http\Request;

class TabelUserController extends Controller
{
    public function index()
    {
        // Get all cargo
        $user = TabelUser::all();

        // Return collection of cargo as a resource
        return new PostResource(true, 'List Data Posts', $user);
    }
}
