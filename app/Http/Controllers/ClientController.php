<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Client;
use App\Http\Resources\ClientCollection;
use App\Http\Resources\ClientResource;
use Illuminate\Support\Facades\DB;

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

    public function getClientById(Request $request, $id)
    {
        $client = Client::find($id);
        return response()->json($client);
    } 

    public function getClientByName($name = "colombina")
    {
        $client = DB::table('clients')->where('name','LIKE',"%".$name."%")->get();
        // $client = Client::where('name','LIKE',"%".$name."%");
        // return new ClientResource($client);
        // dd($client);
        // return $client;
        return response()->json($client);
    }
}
