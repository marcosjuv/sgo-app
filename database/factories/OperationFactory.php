<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Operation;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Custom>
 */
class OperationFactory extends Factory
{
    protected $model = Operation::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'client_id' => $this->faker->numberBetween(1, 235),
            'operation_type_id' => $this->faker->numberBetween(1, 15),
            'office_id' => $this->faker->numberBetween(1, 4),
            'custom_id' => $this->faker->numberBetween(1, 6),
            'document' => $this->faker->sentence(10),
            'file' => $this->faker->sentence(10),
            'bill' => $this->faker->sentence(10),
            'merchandise_description' => $this->faker->name,
            'dispatcher' => $this->faker->name,
            'merchandise_origin' => $this->faker->sentence(45),
            'merchandise_source' => $this->faker->sentence(45),
            'merchandise_destination' => $this->faker->sentence(45),
            'transport_vehicle' => $this->faker->name,
            'vehicle_arrival_date' => $this->faker->date(),
            'reception_original_documents' => $this->faker->date(),
            'reception_comments' => $this->faker->sentence(45),
            'funds_request' => $this->faker->date(),
            'procedure_sidunea' => $this->faker->date(),
            'customs_presentation' => $this->faker->date(),
            'customs_recognition' => $this->faker->date(),
            'bank_cancellation' => $this->faker->date(),
            'delivery_dispatch_transport' => $this->faker->date(),
            'warehouse' => $this->faker->words(),
            'warehouse_vehicle_exit' => $this->faker->date(),
            'billing_file' => $this->faker->date(),
            'billed_file' => $this->faker->date(),
            'shipping_invoice_customer' => $this->faker->date(),
            'customer_invoice_reception' => $this->faker->date(),
            'additional_day_details' => $this->faker->sentence(45),
            'dai_registration' => $this->faker->date(),
            'dua_dia' => $this->faker->words(1, true),
            'status' => $this->faker->boolean(),
            'process_color' => $this->faker->randomElement(["Amarillo","Blanco","Verde"]),
            'comment' => $this->faker->name     
        ];
    }
}
