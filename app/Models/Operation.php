<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Operation extends Model
{
    use HasFactory;
    protected $fillable = [
        'office_id',
        'client_id',
        'custom_id',
        'operation_type_id',
        'bill',
        'document',
        'file',
        'merchandise_description',
        'dispatcher',
        'merchandise_origin',
        'merchandise_source',
        'merchandise_destination',
        'transport_vehicle',
        'vehicle_arrival_dat',
        'reception_documents_f',
        'reception_original_documen',
        'reception_comments',
        'funds_reque',
        'procedure_sidun',
        'customs_presentati',
        'customs_recogniti',
        'bank_cancellati',
        'delivery_dispatch_transpo',
        'warehouse_vehicle_ex',
        'billing_fi',
        'billed_fi',
        'shipping_invoice_custom',
        'customer_invoice_recepti',
        'dua_printed_form',
        'additional_day_details',
        'dai_registrati',
        'dispatch_da',
        'payroll_number',
        'dua_dia',
        'cif',
        'bultos',
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
}
