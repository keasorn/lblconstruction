<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDesingBuildsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('desing_builds', function (Blueprint $table) {
            $table->id();
            $table->string("title");
            $table->string("design_bg");
            $table->string("build_bg");
            $table->string("design_build_bg");
            $table->string("design_title");
            $table->text("design_des");
            $table->string("build_title");
            $table->text("build_des");
            $table->text("journey");
            $table->bigInteger("created_by")->unsigned();
            $table->foreign('created_by')->references('id')->on('users');
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
        Schema::dropIfExists('desing_builds');
    }
}
