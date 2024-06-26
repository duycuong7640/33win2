<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->bigIncrements('id')->autoIncrement();
            $table->uuid('uuid')->unique();
            $table->bigInteger('user_id');
            $table->string('title');
            $table->string('slug');
            $table->bigInteger("category_id");
            $table->string("category_multi")->nullable();
            $table->text('description')->nullable();
            $table->longText('content')->nullable();
            $table->string('thumbnail')->nullable();
            $table->integer('rank')->default(0)->nullable();
            $table->integer('view')->default(0)->nullable();
            $table->integer('status')->default(1);
            $table->string('type', 20)->nullable();

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
            $table->index('category_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('posts');
    }
}
