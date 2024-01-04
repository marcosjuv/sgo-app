<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Custom;

class CustomController extends Controller
{
    public function index(Request $request)
    {
        return Custom::paginate(15);
    }
}
