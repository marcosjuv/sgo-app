<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    public function login() {
        $user = User::where('email', request('email'))->first();

        if ($user && Hash::check(request('password'), $user->password)) {
            $token = $user->createToken('login');

            return[
                'token' => $token->plainTextToken,
            ];
        }

        return response()->json([
            'mensaje' => 'Credenciales invalidas'
        ], 401);
    }

    public function getToken()
    {
        $token = DB::table('users')->join('personal_access_tokens','users.id','=','tokenable_id')->select('token')->first();
        return $token;
    }
}
