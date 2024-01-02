<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class LoginController extends Controller
{
    public function login(Request $request) {

        // $credentials = $request->validate([
        //     'email' => ['required', 'email'],
        //     'password' => ['required'],
        // ]);
 
        // if (Auth::attempt($credentials)) {
        //     $user = Auth::user();
        //     $token = $user->createToken('token')->plainTextToken;
        //     $cookie = cookie('cookie_token', $token, 60 * 24);
        //     return response(["token"=>$token], Response::HTTP_OK)->withoutCookie($cookie);
        // } else {
        //     return response(["message"=> "Credenciales inválidas"],Response::HTTP_UNAUTHORIZED);
        // }

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

    public function logout() {
        $cookie = Cookie::forget('cookie_token');
        return response(["message"=>"Cierre de sesión OK"], Response::HTTP_OK)->withCookie($cookie);
    }
}
