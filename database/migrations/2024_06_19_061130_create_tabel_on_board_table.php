<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelOnBoardTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_on_board', function (Blueprint $table) {
            $table->id('id_onboard');
            $table->unsignedBigInteger('id_kapal');
            $table->foreign('id_kapal')->references('id_kapal')->on('tabel_kapal');
            $table->unsignedBigInteger('id_user');
            $table->foreign('id_user')->references('id')->on('tabel_user');
            $table->timestamps(); // Ini akan membuat kolom created_at dan updated_at
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tabel_on_board');
    }
}
