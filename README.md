# README

## Tech Stack

- Ruby 3.2.2
- Rails 7.1.3.2
- Mysql 8.0

## Initial Setup

Install Docker, Docker compose
```bash
$ docker-compose build
$ docker-compose up -d
$ docker-compose exec app rails db:create
$ docker-compose exec app rails db:migrate
```

## After update Gemfile

```bash
$ docker-compose build
```
#   o r i g i n  
 