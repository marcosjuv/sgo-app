<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ReportResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'custom_id' => $this->custom->name,
            'file' => $this->file,
            'client_id' => $this->client->name,
            'customs_presentation' => $this->customs_presentation,
            'delivery_dispatch_transport' => date("Y-m-d", strtotime($this->delivery_dispatch_transport)),
            'bill' => $this->bill,
            'merchandise_description' => $this->merchandise_description,
            'transport_vehicle' => $this->transport_vehicle,
            'status' => $this->status,
            'comment' => $this->comment
        ];
    }
}
