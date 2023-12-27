<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('documents', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->timestamps();
        });

        Schema::create('operation_types', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->boolean('active');
            $table->timestamps();
        });

        Schema::create('offices', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('comment');
            $table->boolean('active');
            $table->timestamps();
        });

        Schema::create('warehouses', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('address');
            $table->string('phone_number');
            $table->string('comment');
            $table->boolean('active');
            $table->timestamps();
        });

        Schema::create('operations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('client_id');
            $table->foreignId('operation_type_id');
            $table->foreignId('office_id');
            $table->foreignId('custom_id');
            $table->foreignId('document_id');
            $table->integer('file');
            $table->string('bill')->nullable();
            $table->string('merchandise_description')->nullable();
            $table->string('dispatcher')->nullable();
            $table->string('merchandise_origin')->nullable();
            $table->string('merchandise_source')->nullable();
            $table->string('merchandise_destination')->nullable();
            $table->string('transport_vehicle')->nullable();
            $table->dateTime('vehicle_arrival_date')->nullable();
            $table->dateTime('reception_documents_fax')->nullable();
            $table->dateTime('reception_original_documents')->nullable();
            $table->string('reception_comments')->nullable();
            $table->dateTime('funds_request')->nullable();
            $table->dateTime('procedure_sidunea')->nullable();
            $table->dateTime('customs_presentation')->nullable();
            $table->dateTime('customs_recognition')->nullable();
            $table->dateTime('bank_cancellation')->nullable();
            $table->dateTime('delivery_dispatch_transport')->nullable();
            $table->dateTime('warehouse_vehicle_exit')->nullable();
            $table->dateTime('billing_file')->nullable();
            $table->dateTime('billed_file')->nullable();
            $table->dateTime('shipping_invoice_customer')->nullable();
            $table->dateTime('customer_invoice_reception')->nullable();
            $table->string('dua_printed_form')->nullable();
            $table->string('additional_day_details')->nullable();
            $table->dateTime('dai_registration')->nullable();
            $table->dateTime('dispatch_date')->nullable();
            $table->string('payroll_number')->nullable();
            $table->string('dua_dia')->nullable();
            $table->integer('cif')->nullable();
            $table->double('package', 8, 2)->nullable();
            $table->double('gross_weight', 8, 2)->nullable();
            $table->double('dollar_value', 8, 2)->nullable();
            $table->double('currency_exchange', 8, 2)->nullable();
            $table->double('value_bolivars', 8, 2)->nullable();
            $table->double('storage_amount', 8, 2)->nullable();
            $table->double('seniat_tax', 8, 2)->nullable();
            $table->double('treasury_tax', 8, 2)->nullable();
            $table->double('customer_deposit', 8, 2)->nullable();
            $table->integer('status');
            $table->string('process_color')->nullable();
            $table->string('shipping_guide')->nullable();
            $table->integer('comment')->nullable();
            $table->timestamps();

            $table->foreign('operation_type_id')->references('id')->on('operation_types')->onUpdate('cascade')->onDelete('cascade')->constrained();
            $table->foreign('office_id')->references('id')->on('offices')->onUpdate('cascade')->onDelete('cascade')->constrained();
            $table->foreign('custom_id')->references('id')->on('customs')->onUpdate('cascade')->onDelete('cascade')->constrained();
            $table->foreign('document_id')->references('id')->on('documents')->onUpdate('cascade')->onDelete('cascade')->constrained();
            $table->foreign('client_id')->references('id')->on('clients')->onUpdate('cascade')->onDelete('cascade')->constrained();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('operations');
    }
};
