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
docker build -t brandnewbox/puma-hello-world:latest -f .dockerdev/Dockerfile --build-arg RAILS_ENV=production .
docker tag brandnewbox/puma-hello-world:latest brandnewbox/puma-hello-world:10
docker push brandnewbox/puma-hello-world:10
docker push brandnewbox/puma-hello-world:latest
```