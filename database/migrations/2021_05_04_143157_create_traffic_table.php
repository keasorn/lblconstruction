<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTrafficTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('traffic', function (Blueprint $table) {
            $table->id();
            $table->String("ip");
            $table->String("iso_code");
            $table->String("country");
            $table->String("city");
            $table->String("state_name");
            $table->String("continent");
            $table->String("currency");
            $table->String("state");
            $table->String("timezone");
            $table->String("default");
            $table->String("postal_code");
            $table->String("lat");
            $table->String("lon");
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
        Schema::dropIfExists('traffic');
    }
}
