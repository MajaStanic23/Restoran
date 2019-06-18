<?php

use Illuminate\Database\Seeder;

class TasksTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

    	$zaposlenici = DB::table('users')->where('role', 'zaposlenici')->first();
    	$zaposlenici_id = $zaposlenici->id;

    	for ($i = 1; $i <= 10; $i++) {
    		DB::table('tasks')->insert([
    		    'zaposlenici_id' => $zaposlenici_id,
    		    'naziv_jela' => "Jelo $i",
    		    'naziv_jela_na_engleskom' => "English title $i",
    		    'opis_jela' => str_random($length = 16)
    		]);
    	}
        
    }
}
