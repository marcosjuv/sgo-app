<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OperationType;
use App\Http\Resources\OperationTypeResource;

class OperationTypeController extends Controller
{
    public function index(Request $request)
    {
        return OperationType::paginate();
    }

    public function Store(Request $request)
    {
        $operacion_tipo = new OperationTypeResource(OperationType::create($request->all()));
        if ($operacion_tipo) {
            return response()->json(['mensaje' => 'Tipo operacion registrada'], 200);
        } else {
            return response()->json(['mensaje' => 'Fallo el registro'],401);
        }
    }

    public function getById(Request $request, $id)
    {
        $operacion_tipo = OperationType::find($id);
        return response()->json($operacion_tipo);
    }

    public function edit(Request $request, $id)
    {
        $operacion_tipo = OperationType::find($id);
        if ($operacion_tipo) {
            $operacion_tipo->name = $request->name;
            $operacion_tipo->active = $request->active;
            $operacion_tipo->update($request->all());
            return response()->json(['message' => 'Tipo operacion updated successfully','data' => $operacion_tipo], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 404);
        }
    }

    public function destroy($id)
    {
        $operacion_tipo = OperationType::find($id);
        $operacion_tipo->delete();
        return response()->json(['message' => 'Tipo operacion deleted successfully'], 200);
    }
}
