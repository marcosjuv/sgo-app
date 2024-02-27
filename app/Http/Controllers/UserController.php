<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use \Spatie\Permission\Models\Role;
use App\Http\Resources\UserCollection;
use App\Http\Resources\UserResource;

class UserController extends Controller
{
    public function index(Request $request) {
        return User::paginate();
    }

    public function Store(Request $request)
    {
        $resp = User::where('email', request('email'))->first();
        if ($resp) {
            return response()->json(['mensaje' => 'Correo ya esta registrado'], 403);
        }else {
            $resp = User::create($request->all());
            $resp->assignRole($request->roles);
            return response()->json(['mensaje' => 'Usuario creado'], 201);
        }
    }

    public function getById(Request $request, $id)
    {
        $user = User::find($id);
        $user->hasExactRoles(Role::all());
        return response()->json($user);
    }

    public function Update(Request $request, $id)
    {
        $user = User::find($id);
        if ($user) {
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = $request->password;
            $user->active = $request->active;
            $user->update($request->all());
            $user->assignRole($request->roles);
            return response()->json(['message' => 'Usuario updated successfully','data' => $user], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 401);
        }
    }
}
