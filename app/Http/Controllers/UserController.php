<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Resources\UserCollection;
use App\Http\Resources\UserResource;

class UserController extends Controller
{
    function index(Request $request) {
        $user = User::paginate();
        return new UserCollection($user);
    }

    public function Store(Request $request)
    {
        $resp = User::where('email', request('email'))->first();
        if ($resp) {
            return response()->json(['mensaje' => 'Correo ya esta registrado'], 403);
        }else {
            $resp = new UserResource(User::create($request->all()));
            return response()->json([
                'mensaje' => 'Usuario creado'], 201);
        }
    }

    public function Update(Request $request, User $user)
    {
        return $user->update($request->all());
    }
}
