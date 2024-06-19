<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelKapalTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_kapal', function (Blueprint $table) {
            $table->id('id_kapal')->unsigned();
            $table->string('nama_kapal', 255);
            $table->year('tahun_pembuatan_kapal');
            $table->string('imo_number', 50)->unique();
            $table->integer('gross_ton_kapal');
            $table->integer('dwt_kapal');
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
        Schema::dropIfExists('tabel_kapal');
    }
}
