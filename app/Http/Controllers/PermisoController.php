<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use App\Http\Resources\PermisoResource;


class PermisoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Permission::paginate();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $permiso = Permission::create(['name' => $request->name]);
        // $permiso = new PermisoResource(Permission::create($request->all()));
        if ($permiso) {
            return response()->json(['mensaje' => 'Permiso creado'],200);
        } else {
            return response()->json(['mensaje' => 'Fallo el registro'],401);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $permiso = Permission::find($id);
        return response()->json($permiso);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $permiso = Permission::find($id);
        if ($permiso) {
            $permiso->name = $request->name;
            $permiso->update($request->all());
            return response()->json(['message' => 'Permiso updated successfully','data' => $permiso], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 401);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $permiso = Permission::find($id);
        $permiso->delete();
        return response()->json(['message' => 'Rol deleted successfully'], 200);
    }
}
