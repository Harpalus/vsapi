# vsapi
VarageSale API


## Cloud 9
Start Server:

rails s -b $IP -p $PORT

### Commands
rails new vsapi --api
rails g scaffold Seller name:string longitude:decimal latitude:decimal
rails g scaffold Item title:string description:text price:float published_date:datetime 
rails g scaffold Category name:string
rails g scaffold Item_status name:string


rails g migration AddItemStatusToItems item_status:references
rails g migration AddCategoryToItems category:references
rails g migration AddSellerToItems seller:references

rails g serializer Seller
rails g serializer Item
rails g serializer ItemStatus
rails g serializer Category

rake db:migrate RAILS_ENV=development

rails runner 'p Item.select(:title, :description, :storyline, :published_date, :category_id, :item_status).last'

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


#Challenge Description

Please submit the code through email compacting it using Tar to kpagett@varagesale.com

Please return within 48 hours if possible and email me with any questions! 
Background

One of VarageSale's core experiences is the feed. The task is to create an API that will be consumed by a mobile app and a web app.

Note: This one API will service both apps.

## A typical item has the following structure (all fields are required):

- Item title
- Item description
- Item Category (list of available values)
    - Car
    - Clothing
    - Others
- Item Price
- Seller Name
- Seller Latitude
- Seller Longitude
- Item Status (list of available values)
    - Available
    - Pending
    - Sold
    - Expired
    - Banned
- Item Published Date

## Requirements

The API will generate:

- a list of all items
- a list of all sold items for a particular seller
- details of one item
- a list of available items for a particular category

Anonymous users, without logging in, can query the API these four ways, and retrieve JSON responses.

Note: The assignment does not require any styled views over the JSON responses. We just want to see the JSON.

A banned item should never have the following fields returned by the API:

- Seller Name
- Item Publishing Date
- Technical Notes

The code should be production-ready. Test coverage is expected.

Please include a README on how to run your code and how to run the tests.

Your submission can be developed using any technology/language you like, but we use Ruby on Rails.