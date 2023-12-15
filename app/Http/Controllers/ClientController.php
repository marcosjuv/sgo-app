<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Client;
use App\Http\Resources\ClientCollection;

class ClientController extends Controller
{
    public function index(){
        $clientes = Client::paginate();
        return new ClientCollection($clientes);
    }
}
