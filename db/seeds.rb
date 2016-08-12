# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create some Item Categories
Item.destroy_all

Item.create!([{
  title: 'Baby poo',
  description: 'Fresh out the oven',
  price: 2.99,
  published_date: DateTime.now,
  item_status_id: 5, # Banned
  category_id: 1,
  seller_id: 2
},
{
  title: 'Life of PI',
  description: 'Got as a gift but already had a copy. Brand new.',
  price: 22.97,
  published_date: DateTime.now,
  item_status_id: 1, # Available
  category_id: 2,
  seller_id: 2
},
{
  title: 'Columbia Jacket',
  description: 'Used for one winter, freshly washed.',
  price: 150.00,
  published_date: DateTime.now,
  item_status_id: 3, # Sold
  category_id: 3,
  seller_id: 3
}])

p "Created #{Item.count} Items"

p Item.select(:title, :description, :price, :published_date, :category_id, :item_status_id, :seller_id, :created_at).last