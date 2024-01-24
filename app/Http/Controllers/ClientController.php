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
        return new ClientCollection($client);
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

    public function Update(Request $request, $id)
    {
        $cliente = Client::find($id);
        if ($cliente) {
            $cliente->state_id = $request->state_id;
            $cliente->city_id = $request->city_id;
            $cliente->name = $request->name;
            $cliente->rif = $request->rif;
            $cliente->address = $request->address;
            $cliente->phone_number1 = $request->phone_number1;
            $cliente->phone_number2 = $request->phone_number2;
            $cliente->email = $request->email;
            $cliente->contact_person = $request->contact_person;
            $cliente->position_contact = $request->position_contact;
            $cliente->comment = $request->comment;
            $cliente->active = $request->active;
            $cliente->update($request->all());
            return response()->json(['message' => 'Exito - cliente actualizado','data' => $cliente], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 404);
        }
    }

    public function getDataClient($id){
        $client = Client::find($id);
        return response()->json([
            'state_id' => $client->state->name,
            'city_id' => $client->city->name,
            'name' => $client->name,
            'rif' => $client->rif,
            'address' => $client->address,
            'phone_number1' => $client->phone_number1,
            'phone_number2' => $client->phone_number2,
            'email' => $client->email,
            'contact_person' => $client->contact_person,
            'position_contact' => $client->position_contact,
            'comment' => $client->comment,
            'active' => $client->active,
        ]);
    }

    public function getClientById($id)
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

    public function destroy($id)
    {
        $cliente = Client::find($id);
        $cliente->delete();
        return response()->json(['message' => 'Cliente eliminado'], 200);
    }
}
