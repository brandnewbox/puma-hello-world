# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

```
s2i build .   brandnewbox/bnb-ruby:2.6-postgresql   brandnewbox/puma-hello-world:latest   -p always   -e RAILS_ENV=production --incremental
docker tag brandnewbox/puma-hello-world:latest brandnewbox/puma-hello-world:4
docker push brandnewbox/puma-hello-world:4
```