<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Project;

class IssueFactory extends Factory
{
    public function definition(): array
    {
        $statuses = ['open','in_progress','closed'];
        $priorities = ['low','medium','high'];

        return [
            'project_id'  => Project::factory(), //to create project if none exists
            'title'       => fake()->sentence(6),
            'description' => fake()->paragraph(),
            'status'      => $statuses[array_rand($statuses)],
            'priority'    => $priorities[array_rand($priorities)],
            'due_date'    => fake()->optional(0.6)->dateTimeBetween('now', '+1 month'),
        ];
    }
}
