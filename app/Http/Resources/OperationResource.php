<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class OperationResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'client_id' => $this->client->name,
            'operation_type_id' => $this->operationType->name,
            'office_id' => $this->office->name,
            'custom_id' => $this->custom->name,
            'document_path' => $this->document_path,
            'file' => $this->file,
            'bill' => $this->bill,
            'merchandise_description' => $this->merchandise_description,
            'dispatcher' => $this->dispatcher,
            'merchandise_origin' => $this->merchandise_origin,
            'merchandise_source' => $this->merchandise_source,
            'merchandise_destination' => $this->merchandise_destination,
            'transport_vehicle' => $this->transport_vehicle,
            'vehicle_arrival_date' => $this->vehicle_arrival_date,
            'reception_original_documents' => $this->reception_original_documents,
            'reception_comments' => $this->reception_comments,
            'funds_request' => $this->funds_request,
            'procedure_sidunea' => $this->procedure_sidunea,
            'customs_presentation' => $this->customs_presentation,
            'customs_recognition' => $this->customs_recognition,
            'bank_cancellation' => $this->bank_cancellation,
            'delivery_dispatch_transport' => date("Y-m-d", strtotime($this->delivery_dispatch_transport)),
            'warehouse' => $this->warehouse,
            'warehouse_vehicle_exit' => $this->warehouse_vehicle_exit,
            'billing_file' => $this->billing_file,
            'billed_file' => $this->billed_file,
            'shipping_invoice_customer' => $this->shipping_invoice_customer,
            'customer_invoice_reception' => $this->customer_invoice_reception,
            'additional_day_details' => $this->additional_day_details,
            'dai_registration' => $this->dai_registration,
            'dua_dia' => $this->dua_dia,
            'status' => $this->status,
            'process_color' => $this->process_color,
            'comment' => $this->comment
        ];
    }
}
