<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelShipperTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_shipper', function (Blueprint $table) {
            $table->id('id_shipper');
            $table->string('nama_shipper', 255);
            $table->text('alamat');
            $table->string('no_telfon', 20);
            $table->string('email', 255)->unique();
            $table->enum('status', ['aktif', 'non aktif'])->default('aktif');
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
        Schema::dropIfExists('tabel_shipper');
    }
}
