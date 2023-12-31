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
        $cliente = new ClientResource(Client::create($request->all()));
        if ($cliente) {
            return response()->json([
                'mensaje' => 'Cliente registrado'
            ]);
        } else {
            return response()->json([
                'mensaje' => 'Fallo el registrado'
            ]);
        }
        
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

    public function getClientByName(Request $request)
    {
        if ($name = '') {
            return response()->json(['mensaje' => 'No se encontraron registros'], 404);
        }
        $client = DB::table('clients')->where('name','LIKE','%' .$request->name. '%')->paginate(15);        
        return response()->json([$client]);
    }
}
