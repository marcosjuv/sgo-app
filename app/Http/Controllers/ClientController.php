<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Client;
use App\Http\Resources\ClientCollection;
use App\Http\Resources\ClientResource;

class ClientController extends Controller
{
    public function index(){
        $client = Client::paginate();        
        return new ClientResource($client);
    }


    public function Store(Request $request)
    {
        return new ClientResource(Client::create($request->all()));
    }

    public function Update(Request $request, Client $client)
    {
        return $client->update($request->all());
    }
}
