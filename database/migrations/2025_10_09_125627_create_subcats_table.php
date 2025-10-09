<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('subcats', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('catid');
            $table->string('name');
            $table->timestamps();

            $table->foreign('catid')
                ->references('id')->on('cats')
                ->onDelete('cascade');

            $table->unique(['catid', 'name']);
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('subcats');
    }
};
