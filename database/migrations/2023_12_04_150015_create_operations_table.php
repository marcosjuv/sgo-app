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
            $table->enum('active',[0,1])->default('1');
            $table->timestamps();
        });

        Schema::create('offices', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('comment')->nullable();
            $table->enum('active',[0,1])->default('1');
            $table->timestamps();
        });          

        Schema::create('operations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('client_id');
            $table->foreignId('operation_type_id');
            $table->foreignId('office_id');
            $table->foreignId('custom_id');
            $table->string('document')->nullable();
            $table->string('file')->nullable();
            $table->string('bill');
            $table->string('merchandise_description')->nullable();
            $table->string('dispatcher')->nullable();
            $table->string('merchandise_origin')->nullable();
            $table->string('merchandise_source')->nullable();
            $table->string('merchandise_destination')->nullable();
            $table->string('transport_vehicle')->nullable();
            $table->dateTime('vehicle_arrival_date')->nullable();
            $table->string('warehouse')->nullable();
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
            $table->string('additional_day_details')->nullable();
            $table->dateTime('dai_registration')->nullable();
            $table->string('dua_dia')->nullable();
            $table->string('process_color')->nullable();
            $table->enum('status',[0,1])->default('1');
            $table->string('comment')->nullable();
            $table->timestamps();

            $table->foreign('operation_type_id')->references('id')->on('operation_types')->onUpdate('cascade')->onDelete('cascade')->constrained();
            $table->foreign('office_id')->references('id')->on('offices')->onUpdate('cascade')->onDelete('cascade')->constrained();
            $table->foreign('custom_id')->references('id')->on('customs')->onUpdate('cascade')->onDelete('cascade')->constrained();
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
