# Movies Game - API

## Dependencies

```
Ruby 2.6.5
Rails 6.0.1
Postgres >= 9.1
```

## Installing

Clone the project.
```console
$ git clone git@github.com:edumoreira1506/movies-game-api.git
$ cd movies-game-api
```

Copy the contents of the `.env.example` and `database.yml.example` to `.env` and `database.yml` then change with the credentials of your local environment.

```console
$ cp .env.example .env
$ cp config/database.yml.example config/database.yml
```

Install gems and packages, setup the database and run.
```console
$ bundle
$ yarn
$ rails db:setup
$ rails s
```

Admin access:
```
Email: admin@example.com
Password: password
```
