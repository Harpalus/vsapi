# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create some sellers
Seller.destroy_all

Seller.create!([{
  name: 'Luke',
  longitude: -79.020373,
  latitude: 43.850855
},
{
  name: 'Ruby',
  longitude: -79.383184,
  latitude: 43.653226
}])

Seller.create!(name: 'Tom',
  longitude: -79.020373,
  latitude: 43.850855)

p "Created #{Seller.count} Sellers"
p Seller.select(:name, :latitude.to_s).last

# Create some Item Statuses
ItemStatus.destroy_all

ItemStatus.create!([{
  name: 'Available'
},
{
  name: 'Pending'
},
{
  name: 'Sold'
},
{
  name: 'Expired'
},
{
  name: 'Banned'
}])

p "Created #{ItemStatus.count} Item Statuses"

# Create some Item Categories
Category.destroy_all

Category.create!([{
  name: 'Baby Items'
},
{
  name: 'Books'
},
{
  name: 'Clothing'
},
{
  name: 'Electronics & Entertainment'
},
{
  name: 'Handmade Items'
}])

p "Created #{Category.count} Item Categories"
