<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('prods', function (Blueprint $table) {
            $table->id();

            // Foreign keys
            $table->unsignedBigInteger('catid');
            $table->unsignedBigInteger('subcatid');

            // Core fields
            $table->string('name');
            $table->string('coder')->unique(); // globally unique
            $table->text('des')->nullable();   // short description
            $table->longText('dess')->nullable(); // long description
            $table->string('img')->nullable();    // main image
            $table->string('img2')->nullable();   // thumbnail
            $table->string('filer')->nullable();  // optional file
            $table->enum('vis', ['yes', 'no'])->default('yes');// visibility flag

            // Unique constraint across name + catid + subcatid
            $table->unique(['name', 'catid', 'subcatid']);

            // Foreign key constraints
            $table->foreign('catid')->references('id')->on('cats')->onDelete('cascade');
            $table->foreign('subcatid')->references('id')->on('subcats')->onDelete('cascade');

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('prods');
    }
};

