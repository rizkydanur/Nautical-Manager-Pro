<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelCargoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_cargo', function (Blueprint $table) {
            $table->id('id_cargo');
            $table->unsignedBigInteger('id_shipper');
            $table->foreign('id_shipper')->references('id_shipper')->on('tabel_shipper');
            $table->string('nama_barang', 255)->nullable(false);
            $table->integer('jumlah_barang')->nullable(false);
            $table->decimal('total_tonase', 10, 2)->nullable(false);
            $table->decimal('total_kubikasi', 10, 2)->nullable(false);
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
        Schema::dropIfExists('tabel_cargo');
    }
}
