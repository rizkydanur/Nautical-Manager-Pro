<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelListBarangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_list_barang', function (Blueprint $table) {
            $table->id('id_list_barang');
            $table->unsignedBigInteger('id_vendor_barang');
            $table->foreign('id_vendor_barang')->references('id')->on('tabel_vendor');
            $table->string('nama_barang', 255)->nullable(false);
            $table->decimal('harga_barang', 15, 2)->nullable(false);
            $table->date('tanggal_expired')->nullable();
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
        Schema::dropIfExists('tabel_list_barang');
    }
}
