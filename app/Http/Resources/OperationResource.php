<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\ClientResource;

class OperationResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        // return parent::toArray($request);
        return [
            'id' => $this->id,
            'client_id' => ClientResource::collection($this->name),
            'name' => ClientResource::collection($this->name),
            // 'operation_type_id' => $this->operation_type_id,
            // 'office_id' => $this->office_id
        ];
    }
}
