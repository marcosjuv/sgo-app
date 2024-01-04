<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\OperationController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\OperationTypeController;
use App\Http\Controllers\OfficeController;
use App\Http\Controllers\CustomController;
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
    Route::post('createuser', [UserController::class, 'store']);

    Route::get('operations', [OperationController::class, 'index']);
    Route::get('listusers', [UserController::class, 'index']);

    Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
        return $request->user();
    });

        Route::get('clients', [ClientController::class, 'index']);
        Route::get('operationstype', [OperationTypeController::class, 'index']);
        Route::get('sucursal', [OfficeController::class, 'index']);
        Route::get('aduana', [CustomController::class, 'index']);
        Route::get('getid/{id}', [ClientController::class, 'getClientById']);
        Route::get('name/{name}', [ClientController::class, 'getClientByName']);
    
