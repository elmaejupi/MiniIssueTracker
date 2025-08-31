<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\{Project, Issue, Tag, Comment};

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        //createing some tags
        $tags = Tag::factory()->count(6)->create();

        //creating multiple projects
        Project::factory()
            ->count(5)
            ->create()
            ->each(function ($project) use ($tags) {
                //to create multiple issues per project
                $issues = $project->issues()->saveMany(
                    Issue::factory()->count(rand(4, 8))->make()
                );

                //to attach random tags and create comments for each issue
                foreach ($issues as $issue) {
                    $issue->tags()->attach($tags->random(rand(1,3))->pluck('id')->toArray());
                    Comment::factory()->count(rand(0,3))->create(['issue_id' => $issue->id]);
                }
            });
    }
}
