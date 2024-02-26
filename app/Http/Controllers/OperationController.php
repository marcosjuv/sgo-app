<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Operation;
use App\Models\Client;
use App\Http\Resources\OperationResource;
use App\Http\Resources\OperationCollection;
use App\Http\Resources\ReportResource;
use App\Http\Resources\ReportCollection;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Exports\OperationsExport;
use Maatwebsite\Excel\Facades\Excel;

class OperationController extends Controller
{

     /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $operaciones = Operation::paginate();     
        return new OperationCollection($operaciones);
    }

    public function getAll(Request $request)
    {
        $operaciones = Operation::all();     
        return new OperationCollection($operaciones);
    }

    public function show(Operation $operaciones)
    {
        $operaciones = Operation::paginate();        
        return new OperationCollection($operaciones);
    }

    public function getDataOperation($id)
    {
        $operaciones = Operation::find($id);
        return response()->json([
            'client_id' => $operaciones->client->name,
            'operation_type_id' => $operaciones->operationType->name,
            'office_id' => $operaciones->office->name,
            'custom_id' => $operaciones->custom->name,
            'document' => $operaciones->document,
            'file' => $operaciones->file,
            'bill' => $operaciones->bill,
            'merchandise_description' => $operaciones->merchandise_description,
            'dispatcher' => $operaciones->dispatcher,
            'merchandise_origin' => $operaciones->merchandise_origin,
            'merchandise_source' => $operaciones->merchandise_source,
            'merchandise_destination' => $operaciones->merchandise_destination,
            'transport_vehicle' => $operaciones->transport_vehicle,
            'vehicle_arrival_date' => $operaciones->vehicle_arrival_date,
            'warehouse' => $operaciones->warehouse,
            'reception_original_documents' => $operaciones->reception_original_documents,
            'reception_comments' => $operaciones->reception_comments,
            'funds_request' => $operaciones->funds_request,
            'procedure_sidunea' => $operaciones->procedure_sidunea,
            'customs_presentation' => $operaciones->customs_presentation,
            'customs_recognition' => $operaciones->customs_recognition,
            'bank_cancellation' => $operaciones->bank_cancellation,
            'delivery_dispatch_transport' => $operaciones->delivery_dispatch_transport,
            'warehouse_vehicle_exit' => $operaciones->warehouse_vehicle_exit,
            'billing_file' => $operaciones->billing_file,
            'billed_file' => $operaciones->billed_file,
            'shipping_invoice_customer' => $operaciones->shipping_invoice_customer,
            'customer_invoice_reception' => $operaciones->customer_invoice_reception,
            'additional_day_details' => $operaciones->additional_day_details,
            'dai_registration' => $operaciones->dai_registration,
            'dua_dia' => $operaciones->dua_dia,
            'process_color' => $operaciones->process_color,
            'status' => $operaciones->status,
            'comment' => $operaciones->comment,
        ]);        
    }

    public function getOperationById($id)
    {
        $operaciones = Operation::find($id);
        return response()->json($operaciones);
    }

    public function nameClient($id)
    {
        $users = DB::table('clients')
             ->select('name')
             ->join('operations','operations.client_id','=','clients.id')
             ->where('client_id', '=', $id)
             ->first();
             return $users;
    }

    public function Store(Request $request)
    {
        if (is_null($request->file('document'))) {
            $folder = $this->nameClient($request->client_id);            
            $path = Storage::makeDirectory('public/'.$folder->name);
        }

        $resp = Operation::where('bill', request('bill'))->Where('file',request('file'))->first();
        if ($resp) {
            return response()->json(['mensaje' => 'Factura ó expediente ya esta registrada'], 403);
        }else {
            $request->document_path = Storage::path('file.jpg');
            $resp = new OperationResource(Operation::create($request->all()));
            return response()->json(['mensaje' => 'Operacion creada'], 200);
        }
    }

    public function Update(Request $request, $id)
    {
        $operacion = Operation::find($id);
        $file = $request->file('document');
        $extension = $file->getClientOriginalExtension();
        $folder = $operacion->client_id;
        $name = $operacion->file;
        $file_path = $file->storeAs('public/'.$folder, $name.DIRECTORY_SEPARATOR.date('Y-m-d').'.'.$extension);

        if ($operacion) {

            $operacion->client_id = $request->client_id;
            $operacion->operation_type_id = $request->operation_type_id;
            $operacion->office_id = $request->office_id;
            $operacion->custom_id = $request->custom_id;
            $operacion->document = $file_path;
            $operacion->file = $request->file;
            $operacion->bill = $request->bill;
            $operacion->merchandise_description = $request->merchandise_description;
            $operacion->dispatcher = $request->dispatcher;
            $operacion->merchandise_origin = $request->merchandise_origin;
            $operacion->merchandise_source = $request->merchandise_source;
            $operacion->merchandise_destination = $request->merchandise_destination;
            $operacion->transport_vehicle = $request->transport_vehicle;
            $operacion->vehicle_arrival_date = $request->vehicle_arrival_date;
            $operacion->warehouse = $request->warehouse;
            $operacion->reception_original_documents = $request->reception_original_documents;
            $operacion->reception_comments = $request->reception_comments;
            $operacion->funds_request = $request->funds_request;
            $operacion->procedure_sidunea = $request->procedure_sidunea;
            $operacion->customs_presentation = $request->customs_presentation;
            $operacion->customs_recognition = $request->customs_recognition;
            $operacion->bank_cancellation = $request->bank_cancellation;
            $operacion->delivery_dispatch_transport = $request->delivery_dispatch_transport;
            $operacion->warehouse_vehicle_exit = $request->warehouse_vehicle_exit;
            $operacion->billing_file = $request->billing_file;
            $operacion->billed_file = $request->billed_file;
            $operacion->shipping_invoice_customer = $request->shipping_invoice_customer;
            $operacion->customer_invoice_reception = $request->customer_invoice_reception;
            $operacion->additional_day_details = $request->additional_day_details;
            $operacion->dai_registration = $request->dai_registration;
            $operacion->dua_dia = $request->dua_dia;
            $operacion->process_color = $request->process_color;
            $operacion->status = $request->status;
            $operacion->comment = $request->comment;
            $operacion->save();
            return response()->json(['message' => 'Operacion actualizada','data' => $operacion], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 404);
        }
    }

    public function operationByClient(Request $request)
    {
        $operaciones = Operation::where('client_id','=',$request->id)->paginate();
        return new OperationCollection($operaciones);
    }

    public function getFileDownload(Request $request)
    {
        $operacion = Operation::find($request->id);    
        if ($operacion->document != '0'){
            return Storage::download($operacion->document);            
        } else {
            return response()->json(['mensaje' => 'No hay archivo'], 404);
        }
    }

    public function operationFilter($fecha1,$fecha2,$status)
    {  
        $operaciones = Operation::whereBetween('delivery_dispatch_transport',[$fecha1.' 00:00:00.000', $fecha2.' 23:59:59.999'])
                                ->where('status','=',$status)->paginate();
        return new ReportCollection($operaciones);
    }

    public function witgets()
    {
        $operaciones = DB::table('operations')
             ->select(DB::raw('count(*) as operations_count'))
             ->get();

        $activos = DB::table('operations')
             ->select(DB::raw('count(*) as active'))
             ->where('status', '=', 1)
             ->get();

        $inactivos =  DB::table('operations')
             ->select(DB::raw('count(*) as inactive'))
             ->where('status', '<>', 1)
             ->get();

        return response()->json([
            "operaciones" => $operaciones,
            "activos" => $activos,
            "inactivos" => $inactivos
        ]);
    }
}
