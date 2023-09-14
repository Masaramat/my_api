# My Ruby on Rails API with Devise and Doorkeeper Using swagger for documentation

## Description

A RESTful API built with Ruby on Rails, utilizing the Devise and Doorkeeper gems for authentication and authorization. it is an API for dogs Licenses which implements getting dogs with pagination

## Getting Started

### Prerequisites

Before you start, ensure you have the following installed:

- [Ruby 3.2.2](https://www.ruby-lang.org/en/documentation/installation/)
- [Ruby on Rails](https://rubyonrails.org/)
- [Redis](https://redis.io/)



### Installation

1. Clone the repository:
- for easy accessibily I have uploaded the code to my personal git repository and you cann clone it

   ```bash
   git clone https://github.com/masaramat/my_api.git
   cd your-api #get into your project directory


### System dependencies

- this project uses the following dependencies
    * SQlite 3 as database
    * Redis caching
- Alternatively you can change the database to any relational database of your choice my changing the configurations and installing the gem for the database

### Configuration
* if you want to configure you database based on your needs go to my_api/config/database.yaml and change the configurations to suite your needs

```
    default: &default
    adapter: sqlite3
    pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
    timeout: 5000

    development:
    <<: *default
    database: db/development.sqlite3

    # Warning: The database defined as "test" will be erased and
    # re-generated from your development database when you run "rake".
    # Do not set this db to the same as development or production.
    test:
    <<: *default
    database: db/test.sqlite3

    production:
    <<: *default
    database: db/production.sqlite3

```
- you can change to your desired database by changing the adapter to the databease you want eg read the documentation  ([MySql](https://docs.bitnami.com/aws/infrastructure/ruby/get-started/create-mysql-database/)) 
with the settings below
```bash
    default: &default
    adapter: mysql
    pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
    username: APPNAME
    password: PASSWORD
    host: localhost

  development:
    <<: *default
    database: APPNAME_development

  test:
    <<: *default
    database: APPNAME_test

  production:
    <<: *default
    database: APPNAME_production
```
- Configure your redis by changing the settings to your desire options in the app/config/environment/ for the production.rb and development.rb files

### Database creation and initialization
Irrespective of the database you are using, you can create your database by running the command below
```bash
    rails db:create
```
migrate your database 
```bash
    rails db:migrate
```
For the data to be populated I have an initial data in the root directory (dogs_licence.csv) and configured the seeds.rb file to populate the data so you can run 
```bash
    rails db:seed
```

### How to run app in development
Run the application in development by running 
```bash
    rails s
```

### Deployment instructions
Set up you application variables to be ready for puduction 
I used [fly.io](https://fly.io/docs/hands-on/install-flyctl/) and the details on how to host is detaild on their website



