<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\OperationType;

class OperationTypeController extends Controller
{
    public function index(Request $request)
    {
        return OperationType::paginate();
    }
}
