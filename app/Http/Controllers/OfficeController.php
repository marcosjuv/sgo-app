<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Office;
use App\Http\Resources\OfficeResource;

class OfficeController extends Controller
{
    public function index(Request $request)
    {
        return Office::paginate(15);
    }

    public function Store(Request $request)
    {
        $rules = ['name'=>'required','active'=>'required'];
        $validator = Validator::make(
            $request->all(),
            $rules,
            $messages = [
                'name' => 'El nombre es requerido',
                'active' => 'Activo es requerido'
            ]
        );  
        if ($validator->fails()) {
             return $validator->errors();
        }


        $sucursal = new OfficeResource(Office::create($request->all()));
        if ($sucursal) {
            return response()->json(['mensaje' => 'Sucursal registrada'], 200);
        } else {
            return response()->json(['mensaje' => 'Fallo el registro'],401);
        }
    }

    public function getById(Request $request, $id)
    {
        $sucursal = Office::find($id);
        return response()->json($sucursal);
    }

    public function edit(Request $request, $id)
    {
        $sucursal = Office::find($id);
        $rules = ['name'=>'required','active'=>'required'];
        $validator = Validator::make(
            $request->all(),
            $rules,
            $messages = [
                'name' => 'El nombre es requerido',
                'active' => 'Activo es requerido'
            ]
        );
        if ($validator->fails()) {
             return $validator->errors();
        }       
        if ($sucursal) {
            $sucursal->name = $request->name;
            $sucursal->comment = $request->comment;
            $sucursal->active = $request->active;
            $sucursal->update($request->all());
            return response()->json(['message' => 'Aduana updated successfully','data' => $sucursal], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 404);
        }
    }

    public function destroy($id)
    {
        $sucursal = Office::find($id);
        $sucursal->delete();
        return response()->json(['message' => 'Sucursal deleted successfully'], 200);
    }
}
