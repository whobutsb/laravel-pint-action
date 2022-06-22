#!/bin/sh -l

composer install --prefer-dist

composer require laravel/pint

php vendor/bin/pint --preset ${INPUT_PRESET}
