# ArticlesApp

A blog engine written in Rails.

Documentation is a work in progress.

## Technology

This application works with:

  * Ruby 3.1.2
  * PostgreSQL 14 or superior
  * Redis 5

## Required dependencies:

  * Rails 7

## Configuration:

Right after cloning the project, you should install the required gems:

```
bundle install
```

Then, generate your own **config/credentials.yml.enc** file via the command:

```
bundle exec rails credentials:edit
```

This project uses environment variables to configure basic stuff. You can either
use your own **.zshrc** file or a **.rbenv-vars** file if you use **rbenv** with
the **rbenv-vars** plugin.

Take in account that you need to put your own information on these variables:

```
RAILS_DBHOST="127.0.0.1"
RAILS_DBPORT="5432"
RAILS_DBUSERNAME="railsdev"
RAILS_DBPASSWORD="railsdev"
RAILS_DEFAULT_EMAIL="dev@localhost"
RAILS_DEFAULT_EMAIL_USERNAME="developer"
RAILS_DEFAULT_EMAIL_PASSWORD="secret"
```

If you are not running on Heroku, you might also want to tune the following
parameters:

```
RAILS_MIN_THREADS=8
RAILS_MAX_THREADS=8
WEB_CONCURRENCY=10
DATABASE_URL="postgres://username:password@hostname:5432/database"
REDIS_URL="redis://127.0.0.1:6379/1"
```

If on the other hand, you do not want to pollute your environment variables, you
can add these to the **config/credentials.yml.enc** file. In that case you might
want to refrain from uploading the **config/master.key** file to the repository.

## Database creation

To create the database in development and test, please run:

```
bundle exec rails db:create
bundle exec rails db:schema:load
bundle exec rails db:seed
```

In production, the database should be created without a toolkit.

## Database initialization

To setup the database quickly:

```
bundle exec rails db:setup
```

## Test suite

To execute the test suite, please execute the following command:

```
bundle exec rails test
```

## Services

  * Heroku
  * PostgreSQL
  * Redis

Soon to be implemented:

  * A search engine
  * A cache server such as memcached.
  * A job queue such as Sidekiq, for sending e-mails.
  * A monitoring system.

## Deployment instructions

Modify the deployment configuration in **config/deploy.rb** and then use:

```
bundle exec mina setup
bundle exec mina deploy
```

Take in account that you need at least the **libpq-dev** package installed as it
is required to install the **pg** gem.