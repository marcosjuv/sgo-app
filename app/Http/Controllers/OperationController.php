<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Operation;
use App\Http\Resources\OperationResource;
use App\Http\Resources\OperationCollection;
use Illuminate\Support\Facades\DB;
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

    public function Store(Request $request)
    {
        $resp = Operation::where('bill', request('bill'))->Where('file',request('file'))->first();
        if ($resp) {
            return response()->json(['mensaje' => 'Factura ó expediente ya esta registrada'], 403);
        }else {
            $resp = new OperationResource(Operation::create($request->all()));
            return response()->json(['mensaje' => 'Operacion creada'], 200);
        }
    }

    public function Update(Request $request, $id)
    {
        $operaciones = Operation::find($id);
        if ($operaciones) {
            $operaciones->client_id = $request->client_id;
            $operaciones->operation_type_id = $request->operation_type_id;
            $operaciones->office_id = $request->office_id;
            $operaciones->custom_id = $request->custom_id;
            $operaciones->document = $request->document;
            $operaciones->file = $request->file;
            $operaciones->bill = $request->bill;
            $operaciones->merchandise_description = $request->merchandise_description;
            $operaciones->dispatcher = $request->dispatcher;
            $operaciones->merchandise_origin = $request->merchandise_origin;
            $operaciones->merchandise_source = $request->merchandise_source;
            $operaciones->merchandise_destination = $request->merchandise_destination;
            $operaciones->transport_vehicle = $request->transport_vehicle;
            $operaciones->vehicle_arrival_date = $request->vehicle_arrival_date;
            $operaciones->warehouse = $request->warehouse;
            $operaciones->reception_original_documents = $request->reception_original_documents;
            $operaciones->reception_comments = $request->reception_comments;
            $operaciones->funds_request = $request->funds_request;
            $operaciones->procedure_sidunea = $request->procedure_sidunea;
            $operaciones->customs_presentation = $request->customs_presentation;
            $operaciones->customs_recognition = $request->customs_recognition;
            $operaciones->bank_cancellation = $request->bank_cancellation;
            $operaciones->delivery_dispatch_transport = $request->delivery_dispatch_transport;
            $operaciones->warehouse_vehicle_exit = $request->warehouse_vehicle_exit;
            $operaciones->billing_file = $request->billing_file;
            $operaciones->billed_file = $request->billed_file;
            $operaciones->shipping_invoice_customer = $request->shipping_invoice_customer;
            $operaciones->customer_invoice_reception = $request->customer_invoice_reception;
            $operaciones->additional_day_details = $request->additional_day_details;
            $operaciones->dai_registration = $request->dai_registration;
            $operaciones->dua_dia = $request->dua_dia;
            $operaciones->process_color = $request->process_color;
            $operaciones->status = $request->status;
            $operaciones->comment = $request->comment;
            $operaciones->update($request->all());
            return response()->json(['message' => 'Operacion actualizada','data' => $operaciones], 200);
        }else{
            return response()->json(['message' => 'Data not found'], 404);
        }
    }

    public function export() 
    {
        return Excel::download(new OperationsExport, 'ejecutivo.xlsx');
    }
}
