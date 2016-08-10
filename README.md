# vsapi
VarageSale API


## Cloud 9
Start Server: rails s -b $IP -p $PORT

### Commands
rails new vsapi --api
rails g scaffold Seller name:string longitude:decimal latitude:decimal
rails g scaffold Item title:string description:text price:float published_date:datetime 
rails g scaffold Category name:string
rails g scaffold Item_status name:string

## Git Commands
git checkout -b branch_name

git push -u origin branch_name

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
