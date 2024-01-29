<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Http\Resources\RoleResource;

class RoleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Role::paginate();
    }

    /**
     * Show the form for creating a new resource.
     */
    public function getRol()
    {
        $roles = Role::all();
        $permisos = Permission::all();
        return ['roles' => $roles, 'permisos' => $permisos];
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $rol = new RoleResource(Role::create($request->all()));
        if ($rol) {
            return response()->json(['mensaje' => 'Rol creado']);
        } else {
            return response()->json(['mensaje' => 'Fallo el registro']);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $rol = Role::find($id);
        return response()->json($rol);
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
    public function update(Request $request, $id)
    {
        $rol = Role::find($id);
        if ($rol) {
            $rol->name = $request->name;
            $rol->update($request->all());
            return response()->json(['message' => 'Rol updated successfully','data' => $rol], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 401);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $rol = Role::find($id);
        $rol->delete();
        return response()->json(['message' => 'Rol deleted successfully'], 200);
    }
}
