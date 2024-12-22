<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Question;
use Faker\Generator as Faker;

    function getCorrect($type,$faker) {
        $result = '';
        switch ($type) {
            case 1:
                $result = $faker->randomElement(['A', 'B', 'C', 'D']);
                break;
             case 2:
                $result = $faker->randomElement(['A', 'B', 'C', 'D']).','.$faker->randomElement(['A', 'B', 'C', 'D']);
                break;
             case 3:
                $result = $faker->randomElement(['A', 'B']);
                break;
        }
        return $result;
    }

$factory->define(Question::class, function (Faker $faker) {
    $type = $faker->randomElement([1,2,3]);
    return [
        //
        "question" => $faker->paragraph(1),
        "a" => $faker->realText('20'),
        "b" => $faker->realText('20'),
        "c" => $faker->realText('20'),
        "d" => $faker->realText('20'),
        "type_id" => $type,
        "level_id" => $faker->randomElement([1,2,3]),
        "correct" => getCorrect($type,$faker)
    ];

});
