<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ClientResource extends JsonResource
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
            'name' => $this->name,
            'rif' => $this->rif,
            'phone_number1' => $this->phone_number1,
            'phone_number2' => $this->phone_number2,
            'contact_person' => $this->contact_person,
            'state_id' => $this->state_id,
        ];
    }
}
