<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class LoginController extends Controller
{
    public function login() {
        $user = User::where('email', request('email'))->first();

        if ($user && Hash::check(request('password'), $user->password)) {
            $token = $user->createToken('login');

            return[
                'token' => $token->plainTextToken
            ];
        }

        return response()->json(['mensaje' => 'Credenciales invalidas'], 401);
    }
}
