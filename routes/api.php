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
use App\Http\Controllers\UserController;
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
    Route::get('listusers', [UserController::class, 'index']);
    Route::post('createuser', [UserController::class, 'store']);
    Route::get('user/{id}', [UserController::class, 'getbyid']);
    Route::put('user/{id}', [UserController::class, 'update']);
/*
|--------------------------------------------------------------------------
| API Routes operaciones
|--------------------------------------------------------------------------
*/
    Route::get('list', [OperationController::class, 'index']);
    Route::post('operaciones', [OperationController::class, 'store']);
    Route::get('operation', [OperationController::class, 'getbybill']);
    Route::post('operaciones/{id}', [OperationController::class, 'store']);
/*
|--------------------------------------------------------------------------
| API Routes Tipo de operaciones
|--------------------------------------------------------------------------
*/
    Route::get('operationstype', [OperationTypeController::class, 'index']);
    Route::get('operationstype/{id}', [OperationTypeController::class, 'getbyid']);
    Route::put('operationstype/{id}', [OperationTypeController::class, 'edit']);
    Route::delete('operationstype/{id}', [OperationTypeController::class, 'destroy']);
    Route::post('operationstypecreate', [OperationTypeController::class, 'store']);
/*
|--------------------------------------------------------------------------
| API Routes aduanas
|--------------------------------------------------------------------------
*/
    Route::get('aduana', [CustomController::class, 'index']);
    Route::get('aduana/{id}', [CustomController::class, 'getById']);
    Route::put('update/{id}', [CustomController::class, 'edit']);
    Route::delete('delete/{id}', [CustomController::class, 'destroy']);
    Route::post('aduanacreate', [CustomController::class, 'store']);
/*
|--------------------------------------------------------------------------
| API Routes clientes
|--------------------------------------------------------------------------
*/
    Route::get('clients', [ClientController::class, 'index']);
    Route::put('clients/{id}', [ClientController::class, 'update']);
    Route::delete('clients/{id}', [ClientController::class, 'destroy']);
    Route::get('getid/{id}', [ClientController::class, 'getclientbyid']);
    Route::get('name/{name}', [ClientController::class, 'getclientbyname']);
    Route::post('create', [ClientController::class, 'store']);
/*
|--------------------------------------------------------------------------
| API Routes sucursales
|--------------------------------------------------------------------------
*/
    Route::get('sucursal', [OfficeController::class, 'index']);
    Route::get('sucursal/{id}', [OfficeController::class, 'getById']);
    Route::put('update/{id}', [OfficeController::class, 'edit']);
    Route::delete('delete/{id}', [OfficeController::class, 'destroy']);
    Route::post('sucursalcreate', [OfficeController::class, 'store']);

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
    Route::get('estado/{id}', [StateController::class, 'getById']);