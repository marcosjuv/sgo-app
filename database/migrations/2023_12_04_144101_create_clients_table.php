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
        Schema::create('clients', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('rif')->nullable();
            $table->string('address');
            $table->string('phone_number1');
            $table->string('phone_number2')->nullable();
            $table->string('email')->nullable();
            $table->string('contact_person')->nullable();
            $table->string('position_contact')->nullable();
            $table->string('city')->nullable();
            $table->string('state')->nullable();
            $table->string('comment')->nullable();
            $table->boolean('active');
            $table->timestamps();
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
