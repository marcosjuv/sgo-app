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
        if ($aduana) {
            $aduana->name = $request->name;
            $aduana->observation = $request->observation;
            $aduana->active = $request->active;
            $aduana->update($request->all());
            return response()->json(['message' => 'Aduana updated successfully','data' => $aduana], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 404);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $aduana = Custom::find($id);
        $aduana->delete();
        return response()->json(['message' => 'Aduana deleted successfully'], 200);
    }
}
