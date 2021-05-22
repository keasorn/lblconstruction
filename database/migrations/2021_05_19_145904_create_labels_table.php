<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLabelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('labels', function (Blueprint $table) {
            $table->id();
            $table->text("slogan");
            $table->text("contact");
            $table->string("home");
            $table->string("about_us");
            $table->string("design");
            $table->string("project");
            $table->string("recommend");
            $table->string("us");
            $table->string("career");
            $table->string("award");
            $table->string("copyrights");
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
        Schema::dropIfExists('labels');
    }
}
