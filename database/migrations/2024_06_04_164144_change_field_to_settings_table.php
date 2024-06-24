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
        Schema::table('settings', function (Blueprint $table) {
            $table->text("code_header")->change();
            $table->text("code_body")->change();
            $table->text("code_footer")->change();
            $table->text("home_content")->nullable();
            $table->text("link1")->nullable();
            $table->text("link2")->nullable();
            $table->text("link3")->nullable();
            $table->text("link4")->nullable();
            $table->text("link5")->nullable();
            $table->text("link6")->nullable();
            $table->text("link7")->nullable();
            $table->text("link8")->nullable();
            $table->text("link9")->nullable();
            $table->text("link10")->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('settings', function (Blueprint $table) {
            //
        });
    }
};
