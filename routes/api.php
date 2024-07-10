<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::apiResource('/cargo', App\Http\Controllers\Api\TabelcargoController::class);
Route::apiResource('/inventory', App\Http\Controllers\Api\TabelInventoryController::class);
Route::apiResource('/kapal', App\Http\Controllers\Api\TabelKapalController::class);
Route::apiResource('/listbarang', App\Http\Controllers\Api\TabelListBarangController::class);
Route::apiResource('/onboard', App\Http\Controllers\Api\TabelListBarangController::class);
Route::apiResource('/purchasing', App\Http\Controllers\Api\TabelPurchasingController::class);
Route::apiResource('/shipment', App\Http\Controllers\Api\TabelShipmentController::class);
Route::apiResource('/shipper', App\Http\Controllers\Api\TabelShipperController::class);
Route::apiResource('/user', App\Http\Controllers\Api\TabelUserController::class);
Route::apiResource('/vendor', App\Http\Controllers\Api\TabelVendorController::class);
