<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tabel_user', function (Blueprint $table) {
            $table->id();
            $table->string('nama_user', 255);
            $table->string('email', 255)->unique();
            $table->string('jabatan', 100)->nullable();
            $table->enum('status', ['on board', 'off board'])->default('on board');
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tabel_user');
    }
}
