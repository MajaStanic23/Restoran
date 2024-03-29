<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Admin',
            'email' => 'admin@restoran.local',
            'password' => bcrypt('password'),
            'role' => 'admin'
        ]);

        DB::table('users')->insert([
            'name' => 'Zaposlenici',
            'email' => 'zaposlenici@restoran.local',
            'password' => bcrypt('password'),
            'role' => 'zaposlenici'
        ]);

        DB::table('users')->insert([
            'name' => 'Gosti',
            'email' => 'gosti@restoran.local',
            'password' => bcrypt('password'),
            'role' => 'gosti'
        ]);
    }
}
