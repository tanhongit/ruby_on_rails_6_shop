# Welcome to ecommerce Application Rails 6 by TANHONGIT
Create the ecommerce application implementation using Ruby on Rails 6.

# Demo

You can try it at https://rails6shop.herokuapp.com/

> **_Account login on Backend_**

```
user :
    username: tanhong1     | password: tanhong1
```

# 1. Technology
- Ruby on Rails

# 2. Configuration requirements
We are going to build the web application using:
- Rails 6.0.3.2
- Ruby 2.7.1

# 3. Feature
```
1. Product Manager
2. Using a Helper to Format the Price
3. Create cart 
4. Ajax-Based Cart
5. Check Out Order 
6. Login, Logout, Authenticating Users, User Manager 
7. Internationalization
8. Receive Emails and Respond with Rich Text
9. Pagination, Search
...
```

# 4. Runing

### 4.1. Clone Repo

```
$ git clone https://github.com/TanHongIT/ruby_on_rails_6_shop
$ cd ruby_on_rails_6_shop
```

### 4.2. Bundle Install 

```
$ bundle install
```

### 4.3. Yarn Install 

```
$ yarn install
```

### 4.4. Create database with Postgresql

You must change the appropriate database configuration

Change configuration at _"config/database.yml"_ with Postgresql.

```ruby
default: &default
  adapter: postgresql
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
  username: ruby_on_rails_6_shop
  password: 1234
  host: localhost

# tutorial for ubuntu linux:
# sudo -u postgres psql
# create user "ruby_on_rails_6_shop" with password '1234';  
# create database "ruby_on_rails_6_shop" owner "ruby_on_rails_6_shop"; 

development:
  <<: *default
  database: ruby_on_rails_6_shop_6

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: ruby_on_rails_6_shop_test

production:
  <<: *default
  database: ruby_on_rails_6_shop_production
```

### 4.5. run rails db:migrate

```
$ rails db:migrate
```


### 4.6. Change your mail

Run console :

```
$ bundle exec figaro install
```

Go to config directory and add to file "config/application.yml"

```
user_mail: 'yourmail@gmail.com'
user_password: 'your password'
```
### 4.7. Install Webpacker 

```
$ bundle exec rake webpacker:install
```

### 4.8. Load data into database

We use loop loop to load data into database, run the following commands in turn:

```
$ rails runner bin/create_dummy_orders.rb
$ rails runner bin/create_dummy_products.rb
$ rails runner bin/create_dummy_users.rb
```

### 4.9. Run server 

```
$ rails s
```

# 5. User Login

> **_Account login on Backend_**

```
user :
    username: tanhong1     | password: tanhong1
```

## Support for me
Support this project :stuck_out_tongue_winking_eye: :pray:
<p align="center">
    <a href="https://www.paypal.me/tanhongit" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-green.svg" data-origin="https://img.shields.io/badge/Donate-PayPal-green.svg" alt="PayPal buymeacoffee TanHongIT"></a>
</p>
