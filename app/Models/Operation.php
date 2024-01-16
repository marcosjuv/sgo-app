<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Operation extends Model
{
    use HasFactory;
    protected $fillable = [
        'client_id',
        'operation_type_id',
        'office_id',
        'custom_id',
        'document',
        'file',
        'bill',
        'merchandise_description',
        'dispatcher',
        'merchandise_origin',
        'merchandise_source',
        'merchandise_destination',
        'transport_vehicle',
        'vehicle_arrival_date',
        'reception_documents_fax',
        'reception_original_documents',
        'reception_comments',
        'funds_request',
        'procedure_sidunea',
        'customs_presentation',
        'customs_recognition',
        'bank_cancellation',
        'delivery_dispatch_transport',
        'warehouse',
        'warehouse_vehicle_exit',
        'billing_date',
        'billing_file',
        'billed_file',
        'shipping_invoice_customer',
        'customer_invoice_reception',
        'dua_printed_form',
        'additional_day_details',
        'dai_registration',
        'dispatch_date',
        'payroll_number',
        'dua_dia',
        'cif',
        'package',
        'gross_weight',
        'dollar_value',
        'currency_exchange',
        'value_bolivars',
        'storage_amount',
        'seniat_tax',
        'treasury_tax',
        'customer_deposit',
        'status',
        'process_color',
        'shipping_guide',
        'comment'       
    ];

    /**
     * Get the user that owns the Operation
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function operationstype(){
        return $this->belongsTo(OperationType::class);
    }

    public function office(){
        return $this->belongsTo(Office::class);
    }

    public function custom(){
        return $this->belongsTo(Custom::class);
    }

    public function client(){
        return $this->belongsTo(Client::class);
    }
}
