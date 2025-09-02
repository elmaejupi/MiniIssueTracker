<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    //to run the migrations
   public function up()
{
    Schema::table('issues', function (Blueprint $table) {
        $table->foreignId('user_id')->nullable()->constrained()->onDelete('cascade');
    });

    Schema::table('comments', function (Blueprint $table) {
        $table->dropColumn('author_name'); // if it exists
        $table->foreignId('user_id')->nullable()->constrained()->onDelete('cascade');
    });
}


    //to reverse the migrations
    public function down(): void
    {
        Schema::table('issues_and_comments', function (Blueprint $table) {
            //
        });
    }
};
