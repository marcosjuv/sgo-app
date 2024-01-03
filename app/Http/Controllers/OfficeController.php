<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Office;

class OfficeController extends Controller
{
    public function index(Request $request)
    {
        return Office::paginate(15);
    }
}
