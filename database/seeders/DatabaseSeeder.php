<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\Operation::factory(200)->create();

        \App\Models\User::factory()->create([
            'name' => 'Marcos Urdaneta',
            'email' => 'marcosjavieruv@gmail.com',
            'password' => bcrypt('14278228')
        ]);

        \App\Models\Custom::factory()->create([
            'name' => 'MARITIMA - MARACAIBO',
            'observation' => '',
            'active' => 1,
            'name' => 'AEREA - LA CHINITA',
            'observation' => '',
            'active' =>1,
            'name' => 'TERRESTRE - SAN ANTONIO',
            'observation' => '',
            'active' => 1,
            'name' => 'MARITIMA - PTO. CABELLO',
            'observation' => '',
            'active' => 0,
            'name' => 'TERRESTRE - PARAGUACHON',
            'observation' => '',
            'active' => 0,
            'name' => 'TERRESTRE -  UREÑA',
            'observation' => '',
            'active' => 1,
        ]);
    }
}
