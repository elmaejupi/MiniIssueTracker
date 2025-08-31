<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProjectFactory extends Factory
{
    public function definition(): array
    {
        $start = fake()->dateTimeBetween('-2 months', 'now');
        $deadline = (clone $start)->modify('+'.rand(7,30).' days');

        return [
            'name' => fake()->unique()->words(3, true),
            'description' => fake()->paragraph(),
            'start_date' => $start,
            'deadline' => $deadline,
        ];
    }
}
