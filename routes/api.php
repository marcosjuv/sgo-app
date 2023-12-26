<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\OperationController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\User;

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



    Route::post('login', [LoginController::class, 'login']);

    Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
        return $request->user();
    });
    Route::middleware('auth:sanctum')->post('createuser', UserController::class, 'store');
    
    Route::middleware('auth:sanctum')->group(function () {
    Route::get('gettoken', [LoginController::class, 'gettoken']);
    // Route::apiResource('clients', ClientController::class);
    // Route::apiResource('operations', OperationController::class);
    // Route::get('listusers', UserController::class, 'index');
});
