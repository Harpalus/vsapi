# vsapi
VarageSale API


## Cloud 9
Cloud 9 server: https://c9.io/seche/vsapi

Code on Github: https://github.com/seche/vsapi

Start Server command: `rails s -b $IP -p $PORT`

Server uses:

Rails version: 5.0.0
Ruby version: 2.3.0 (x86_64-linux)

### Commands Used

```
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
```

### Test Database
Run Seeds1.rb once to generate data for Categories, Item Statuses and Sellers.
Run Seeds.rb to add items.

Command line to see if data is available:

`rails runner 'p Item.select(:title, :description, :storyline, :published_date, :category_id, :item_status).last'`

## How to use this script

### JQUERY request testing

You can use a simple request like the one below:
```
jQuery.ajax({
  type: 'POST',
  url: '/categories',
  dataType: 'json',
  contentType: 'application/json',
  data: JSON.stringify({ category: { name: "Yehuda" } }),
  success: function(json) { }
});
```
### Command line testing
POST Command `curl -H "Content-Type: application/json" -H "Accept: application/json" -d '{"name":"yoda"}' https://vsapi-seche.c9users.io/categories`

rake spec

### Api Requirements
Below are the 4 required api queries requested. They all return a JSON object.
Also included in the code is all the functionalities for CRUD (Create, read, update and delete) that was generated with scaffold. This let's me manipulate the database but I commented out the routes access.

### How to
- In the untar app folder run `bundle install`.
- Then run `rake db:migrate RAILS_ENV=development`.
- Then run the server `rails s`

You can also get the code from github: `https://github.com/seche/vsapi.git` Or ask to collaborate on Cloud9.

#### Show all items
`curl -H "Content-Type: application/json" -H "Accept: application/json" --get https://vsapi-seche.c9users.io/items`

`/items`

https://vsapi-seche.c9users.io/items

#### Show all items in a specific category
`curl -H "Content-Type: application/json" -H "Accept: application/json" --get https://vsapi-seche.c9users.io/categoryItems/1`

`/categoryItems/:category_id`

https://vsapi-seche.c9users.io/categoryItems/1

#### Show all sold items for a specific seller
`curl -H "Content-Type: application/json" -H "Accept: application/json" --get https://vsapi-seche.c9users.io/soldItems/3`

`/soldItems/:seller_id`

https://vsapi-seche.c9users.io/soldItems/3

#### Show one item
`curl -H "Content-Type: application/json" -H "Accept: application/json" --get https://vsapi-seche.c9users.io/items/1`

`/items/:item_id`

https://vsapi-seche.c9users.io/items/1

========================================================

# Challenge Description

Please submit the code through email compacting it using Tar to kpagett@varagesale.com

Please return within 48 hours if possible and email me with any questions! 

## Background

One of VarageSale's core experiences is the feed. The task is to create an API that will be consumed by a mobile app and a web app.

*Note: This one API will service both apps.*

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

*Note: The assignment does not require any styled views over the JSON responses. We just want to see the JSON.*

A banned item should never have the following fields returned by the API:

- Seller Name
- Item Publishing Date
- Technical Notes (Field was never mentioned in the structure)

The code should be production-ready. Test coverage is expected.

Please include a README on how to run your code and how to run the tests.

Your submission can be developed using any technology/language you like, but we use Ruby on Rails.
