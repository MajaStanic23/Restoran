<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTasksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tasks', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('zaposlenici_id');
            $table->unsignedInteger('gosti_id')->nullable();
            $table->string('naziv_jela');
            $table->string('naziv_jela_na_engleskom');
            $table->text('opis_jela')->nullable();
            $table->enum('tip_jela', ['predjelo', 'glavno_jelo', 'desert'])->default('glavno_jelo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tasks');
    }
}
