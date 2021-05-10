Store: 
has_many: customers
has_many: items, through: customers

name
phone
city

Customer:
belongs_to: store
has_many: items

name
email
phone
stravaURL
bikeStyle
reference to Store


Item:
belongs_to: customer

description
price
purchaseDate
bikeType
avgLifeInMiles
reference to Customer
