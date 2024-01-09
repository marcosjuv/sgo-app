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
        Schema::create('states', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->timestamps();
        });

        Schema::create('cities', function (Blueprint $table) {
            $table->id();
            $table->foreignId('state_id');
            $table->string('name');
            $table->timestamps();

            $table->foreign('state_id')->references('id')->on('states')->onUpdate('cascade')->onDelete('cascade')->constrained();
        });
        
        Schema::create('clients', function (Blueprint $table) {
            $table->id();
            $table->foreignId('state_id')->nullable();
            $table->foreignId('city_id')->nullable();
            $table->string('name');
            $table->string('rif')->nullable();
            $table->string('address');
            $table->string('phone_number1');
            $table->string('phone_number2')->nullable();
            $table->string('email')->nullable();
            $table->string('contact_person')->nullable();
            $table->string('position_contact')->nullable();
            $table->string('comment')->nullable();
            $table->boolean('active');
            $table->timestamps();

            $table->foreign('state_id')->references('id')->on('states')->onUpdate('cascade')->onDelete('cascade')->constrained();
            $table->foreign('city_id')->references('id')->on('cities')->onUpdate('cascade')->onDelete('cascade')->constrained();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('clients');
    }
};
