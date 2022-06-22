#!/bin/sh -l

composer install --prefer-dist

composer require --dev laravel/pint

php vendor/bin/pint --preset ${INPUT_PRESET}
