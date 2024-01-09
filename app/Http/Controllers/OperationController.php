<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Operation;
use App\Http\Resources\OperationResource;

class OperationController extends Controller
{

     /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $operaciones = Operation::all();        
        return new OperationResource($operaciones);
    }

    public function Store(Request $request)
    {
        $resp = Operation::where('bill', request('bill'))->first();
        if ($resp) {
            return response()->json(['mensaje' => 'Factura ya esta registrada'], 403);
        }else {
            $resp = new OperationResource(Operation::create($request->all()));
            return response()->json(['mensaje' => 'Operacion creada'], 200);
        }
    }
}
