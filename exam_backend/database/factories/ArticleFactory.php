<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Article;
use Faker\Generator as Faker;

$factory->define(Article::class, function (Faker $faker) {
    return [
        //
        'title' => $faker->title,
        'author' => $faker->word,
        'content' => $faker->paragraph
    ];
});
