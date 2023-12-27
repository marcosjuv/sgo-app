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

        // DB::table('users')->insert([
        //     'name' => Str::random(10),
        //     'rif' => Str::random(10),
        //     'address' => Str::random(10),
        //     'phone_number1' => Str::random(10),
        //     'phone_number2' => Str::random(10),
        //     'email' => Str::random(10).'@gmail.com',
        //     'password' => Hash::make('password'),
        // ]);
    }
}
