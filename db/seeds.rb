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
store3 = Store.create(name: "Rocktown Bicycyles", phone: "540-689-0070", city: "Harrisonburg")

cust1 = Customer.create(name: "Seth", email: "email@email.com", phone: "540-849-8929", stravaURL: "Seth Blanchard", bikeStyle: "road and mountain", store_id: 1)
cust2 = Customer.create(name: "Jonathan", email: "bremail@email.com", phone: "540-849-0000", stravaURL: "JSteetch", bikeStyle: "road", store_id: 2)
cust3 = Customer.create(name: "Caity", email: "tremail@email.com", phone: "540-849-0039", stravaURL: "Caitlin Blancahrd", bikeStyle: "cruiser", store_id: 1)

item1 = Item.create(description: "Specialized Tarmac Comp", price: 3500, bikeType: "Road", avgMileage: 25000, customer_id: 1)
item2 = Item.create(description: "Trek Madone", price: 2200, bikeType: "Road", avgMileage: 25000, customer_id: 2)
item3 = Item.create(description: "Cruiser Bike", price: 500, bikeType: "Cruiser", avgMileage: 10000, customer_id: 3)

