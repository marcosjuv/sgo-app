<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use \Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class LoginController extends Controller
{
    public function login(Request $request, User $user) {        

        $user = User::where('email', request('email'))->first();
        $role = $user->getRoleNames();
        if ($user && Hash::check(request('password'), $user->password)) {
            $token = $user->createToken('login');

            return[
                'token' => $token->plainTextToken,
                'id' => $user->id,
                'name' => $user->name,
                'role' => $role[0]
            ];
        }
        

        return response()->json(['mensaje' => 'Credenciales invalidas'], 401);
    }

    public function logout() {
        $cookie = Cookie::forget('cookie_token');
        return response(["message"=>"Cierre de sesión OK"], Response::HTTP_OK)->withCookie($cookie);
    }
}
