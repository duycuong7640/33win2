<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->bigIncrements('id')->autoIncrement();
            $table->uuid('uuid')->unique();
            $table->bigInteger('parent_id')->nullable();
            $table->bigInteger('user_id')->nullable();
            $table->string('title');
            $table->string('slug')->nullable();
            $table->string('thumbnail')->nullable();
            $table->text('description')->nullable();
            $table->text('content')->nullable();
            $table->text('redirect_url')->nullable();
            $table->integer('rank')->default(0)->nullable();
            $table->string('type', 20)->nullable()->comment("Type of category");
            $table->integer('status')->default(1)->comment("1: Active 0: Blocked");

            $table->integer('choose_1')->default(0)->nullable()->comment("1: Active 0: Blocked");
            $table->integer('choose_2')->default(0)->nullable()->comment("1: Active 0: Blocked");
            $table->integer('choose_3')->default(0)->nullable()->comment("1: Active 0: Blocked");
            $table->integer('choose_4')->default(0)->nullable()->comment("1: Active 0: Blocked");
            $table->integer('choose_5')->default(0)->nullable()->comment("1: Active 0: Blocked");

            $table->text('title_seo')->nullable();
            $table->text('meta_des')->nullable();
            $table->text('meta_key')->nullable();
            $table->timestamps();

            $table->index('user_id');
            $table->index('parent_id');
            $table->index('status');
            $table->index('type');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
}
