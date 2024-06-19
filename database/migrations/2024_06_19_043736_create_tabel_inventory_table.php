<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelInventoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_inventory', function (Blueprint $table) {
            $table->id('id_inventory');
            $table->unsignedBigInteger('id_kapal');
            $table->unsignedBigInteger('id_user');
            $table->unsignedBigInteger('id_vendor');
            $table->string('nama_barang', 255);
            $table->integer('qty_barang');
            $table->date('tanggal_terima');
            $table->timestamps(); // This will create both 'created_at' and 'updated_at' columns

            // Foreign keys
            // $table->foreign('id_kapal')->references('id_kapal')->on('tabel_kapal')->onDelete('cascade');
            $table->foreign('id_user')->references('id')->on('tabel_user')->onDelete('cascade');
            $table->foreign('id_vendor')->references('id')->on('tabel_vendor')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tabel_inventory');
    }
}
