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
use App\Http\Controllers\RoleController;
use App\Http\Controllers\PermisoController;
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

    // Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    //     return $request->user();
    // });

/*
|--------------------------------------------------------------------------
| API Routes login
|--------------------------------------------------------------------------
*/
    Route::post('login', [LoginController::class, 'login']);
    Route::post('logout', [LoginController::class, 'logout']);
    // Route::post('logout', [LoginController::class, 'logout']);

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
    Route::get('operation/{id}', [OperationController::class, 'getoperationbyid']);
    Route::get('operationdata/{id}', [OperationController::class, 'getdataoperation']);
    Route::put('operaciones/{id}', [OperationController::class, 'update']);
    Route::get('operaciones/{id}', [OperationController::class, 'operationbyclient']);
    Route::get('operacionesfilter/{valor}', [OperationController::class, 'operationfilter']);
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
    Route::resource('clients', ClientController::class)->names('index');
    // Route::get('clients', [ClientController::class, 'index']);
    Route::put('clients/{id}', [ClientController::class, 'update']);
    Route::delete('clients/{id}', [ClientController::class, 'destroy']);
    Route::get('getid/{id}', [ClientController::class, 'getclientbyid']);
    Route::get('client/{id}', [ClientController::class, 'getdataclient']);
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

/*
|--------------------------------------------------------------------------
| API Routes roles
|--------------------------------------------------------------------------
*/
    Route::get('roles', [RoleController::class, 'index']);
    Route::get('dataroles', [RoleController::class, 'getRol']);
    Route::get('rol/{id}', [RoleController::class, 'show']);
    Route::put('rol/{id}', [RoleController::class, 'update']);
    Route::delete('rol/{id}', [RoleController::class, 'destroy']);
    Route::post('createrol', [RoleController::class, 'store']);
/*
|--------------------------------------------------------------------------
| API Routes permisos
|--------------------------------------------------------------------------
*/
    Route::get('permisos', [PermisoController::class, 'index']);
    Route::get('permiso/{id}', [PermisoController::class, 'show']);
    Route::put('permiso/{id}', [PermisoController::class, 'update']);
    Route::delete('permiso/{id}', [PermisoController::class, 'destroy']);
    Route::post('createpermiso', [PermisoController::class, 'store']);


/*
|--------------------------------------------------------------------------
| API Routes reporte ejecutivo
|--------------------------------------------------------------------------
*/
    Route::get('operations/export/', [OperationController::class, 'export']);