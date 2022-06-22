# Laravel Pint Action

A GitHub action to clean your code using [Laravel Pint](https://github.com/laravel/pint).

## Usage

Create the following file in your project: `.github/workflows/clean.yml`.

Under `preset:` you can specify the pint [preset](https://github.com/laravel/pint#presets).  By default `psr12` will be used.

```
on: [push]

jobs: 
  clean:
    runs-on: ubuntu-latest
    name: Clean the code with Laravel Pint
    steps:

      - name: Checkout
        uses: actions/checkout@v3
        with: 
          ref: ${{ github.head_ref }}

      - name: Clean code
        uses: whobutsb/laravel-pint-action@main
        with:
          preset: laravel

      - name: Commit changes
        uses: stefanzweifel/git-auto-commit-action@v4
        with:
          commit_message: Fix styling
```

