<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\OperationController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\OperationTypeController;
use App\Http\Controllers\OfficeController;
use App\Http\Controllers\CustomController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\StateController;
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

    Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
        return $request->user();
    });

/*
|--------------------------------------------------------------------------
| API Routes login
|--------------------------------------------------------------------------
*/
    Route::post('login', [LoginController::class, 'login']);
/*
|--------------------------------------------------------------------------
| API Routes usuario
|--------------------------------------------------------------------------
*/
    Route::post('createuser', [UserController::class, 'store']);
    Route::get('listusers', [UserController::class, 'index']);
/*
|--------------------------------------------------------------------------
| API Routes operaciones
|--------------------------------------------------------------------------
*/
    Route::get('list', [OperationController::class, 'index']);
    Route::post('operaciones', [OperationController::class, 'store']);
/*
|--------------------------------------------------------------------------
| API Routes Tipo de operaciones
|--------------------------------------------------------------------------
*/
    Route::get('operationstype', [OperationTypeController::class, 'index']);
/*
|--------------------------------------------------------------------------
| API Routes aduanas
|--------------------------------------------------------------------------
*/
    Route::get('aduana', [CustomController::class, 'index']);
/*
|--------------------------------------------------------------------------
| API Routes clientes
|--------------------------------------------------------------------------
*/
    Route::post('create', [ClientController::class, 'store']);
    Route::get('clients', [ClientController::class, 'index']);
    Route::get('getid/{id}', [ClientController::class, 'getClientById']);
    Route::get('name/{name}', [ClientController::class, 'getClientByName']);
/*
|--------------------------------------------------------------------------
| API Routes sucursales
|--------------------------------------------------------------------------
*/
    Route::get('sucursal', [OfficeController::class, 'index']);

/*
|--------------------------------------------------------------------------
| API Routes ciudad
|--------------------------------------------------------------------------
*/
    Route::get('ciudad/{id}', [CityController::class, 'show']);
/*
|--------------------------------------------------------------------------
| API Routes estado
|--------------------------------------------------------------------------
*/
    Route::get('estado', [StateController::class, 'index']);