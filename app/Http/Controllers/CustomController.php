<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Custom;
use App\Http\Resources\CustomResource;

class CustomController extends Controller
{
    public function index(Request $request)
    {
        return Custom::paginate(15);
    }

    public function Store(Request $request)
    {
        $aduana = new CustomResource(Custom::create($request->all()));
        if ($aduana) {
            return response()->json([
                'mensaje' => 'Aduana registrada'
            ]);
        } else {
            return response()->json([
                'mensaje' => 'Fallo el registro'
            ]);
        }
        
    }

    public function getById(Request $request, $id)
    {
        $aduana = Custom::find($id);
        return response()->json($aduana);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Request $request, $id)
    {
        $aduana = Custom::find($id);
        $aduana->name = $request->input('name');
        $aduana->observation = $request->input('observation');
        $aduana->active = $request->input('active');
        $aduana->save();
        return response()->json([
            'message' => 'Product updated successfully',
            'product' => $aduana
        ], 200);

    }
}
