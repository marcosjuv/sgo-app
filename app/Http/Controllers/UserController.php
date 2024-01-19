<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Resources\UserCollection;
use App\Http\Resources\UserResource;

class UserController extends Controller
{
    function index(Request $request) {
        return User::paginate();
    }

    public function Store(Request $request)
    {
        $resp = User::where('email', request('email'))->first();
        if ($resp) {
            return response()->json(['mensaje' => 'Correo ya esta registrado'], 403);
        }else {
            $resp = new UserResource(User::create($request->all()));
            return response()->json(['mensaje' => 'Usuario creado'], 201);
        }
    }

    public function getById(Request $request, $id)
    {
        // $user = User::find($id);
        $user = new UserResource(User::find($id));
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
            return response()->json(['message' => 'Usuario updated successfully','data' => $user], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 404);
        }
        // return $user->update($request->all());
    }
}
