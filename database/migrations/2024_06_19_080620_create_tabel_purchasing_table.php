<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelPurchasingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_purchasing', function (Blueprint $table) {
            $table->id('id_purchasing');
            $table->unsignedBigInteger('id_user');
            $table->foreign('id_user')->references('id')->on('tabel_user');
            $table->unsignedBigInteger('id_kapal');
            $table->foreign('id_kapal')->references('id_kapal')->on('tabel_kapal');
            $table->unsignedBigInteger('id_list_barang');
            $table->foreign('id_list_barang')->references('id_list_barang')->on('tabel_list_barang');
            $table->decimal('total_anggaran', 15, 2)->nullable(false);
            $table->enum('status', ['pratinjau', 'di setujui'])->default('pratinjau');
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
        Schema::dropIfExists('tabel_purchasing');
    }
}
