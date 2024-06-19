<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelVendorTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_vendor', function (Blueprint $table) {
            $table->id();
            $table->string('nama_vendor', 255);
            $table->string('vendor_barang', 255);
            $table->text('alamat');
            $table->string('email', 255)->unique();
            $table->string('no_tlfn', 20);
            $table->timestamps(); // This will create both 'created_at' and 'updated_at' columns
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tabel_vendor');
    }
}
