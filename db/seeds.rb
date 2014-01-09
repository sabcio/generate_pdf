# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


order = Order.create(payer_name: 'Shelly Cloud',
  address: "Aleja Tadeusza Kościuszki 32/7\n92-202 Łódź", tax_id: 'PL7252063914',
  country: 'Poland', email: 'support@shellycloud.com')

order2 = Order.create(payer_name: 'MPK',
  address: "Piotrkowska 5\n92-200 Łódź", tax_id: '',
  country: 'Poland', email: 'test@example.com')

order3 = Order.create(payer_name: 'Example Company',
  address: "Śródmieście\n00-465 Warszawa 00-465", tax_id: 'PL1111222233',
  country: 'Poland', email: 'test@example.com')

items = Item.create([{name: 'MacBook Pro'}, {name: 'MacBook Air'},
  {name: 'Mac Pro'}, {name: 'Mac mini'}, {name: 'iMac 27"'}, {name: 'Nexus 5'}])

order.items << items[0]
order.items << items[2]
order.items << items[3]

order2.items << items[1]
order2.items << items[2]

order3.items << items[1]
order3.items << items[2]
order3.items << items[3]
