<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Comment;
use App\Models\Issue;

class CommentFactory extends Factory
{
    protected $model = Comment::class;

    public function definition(): array
    {
        return [
            'issue_id'    => Issue::factory(),
            'author_name' => fake()->name(),
            'body'        => fake()->sentence(12),
        ];
    }
}
