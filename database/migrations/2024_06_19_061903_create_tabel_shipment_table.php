<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelShipmentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_shipment', function (Blueprint $table) {
            $table->id('id_shipment');
            $table->unsignedBigInteger('id_kapal');
            $table->foreign('id_kapal')->references('id_kapal')->on('tabel_kapal');
            $table->unsignedBigInteger('id_cargo');
            $table->foreign('id_cargo')->references('id_cargo')->on('tabel_cargo');
            $table->unsignedBigInteger('id_user');
            $table->foreign('id_user')->references('id')->on('tabel_user');
            $table->unsignedBigInteger('id_shipper');
            $table->foreign('id_shipper')->references('id_shipper')->on('tabel_shipper');
            $table->string('rute', 255)->nullable(false);
            $table->decimal('harga', 15, 2)->nullable(false);
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
        Schema::dropIfExists('tabel_shipment');
    }
}
