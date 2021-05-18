# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.destroy_all
Customer.destroy_all
Item.destroy_all

store1 = Store.create(name: "Black Dog Bikes", phone: "540-887-8700", city: "Staunton")
store2 = Store.create(name: "Shenandoah Bicycle Company", phone: "540-437-9000", city: "Harrisonburg")

cust1 = Customer.create(name: "Seth", phone: "540-849-8929", bike_style: "road and mountain", store_id: store1.id)
cust2 = Customer.create(name: "Jonathan", phone: "540-849-0000", bike_style: "road", store_id: store1.id)
cust3 = Customer.create(name: "Caity", phone: "540-849-0039", bike_style: "cruiser", store_id: store2.id)

# item1 = Item.create(description: "Specialized Tarmac Comp", price: 3500, bike_type: "Road", avg_mileage: 25000, customer_id: cust1)
# item2 = Item.create(description: "Trek Madone", price: 2200, bike_type: "Road", avg_mileage: 25000, customer_id: cust2)
# item3 = Item.create(description: "Cruiser Bike", price: 500, bike_type: "Cruiser", avg_mileage: 10000, customer_id: cust3)

