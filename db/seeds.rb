# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#.......
Car.create(make: 'Ford',
model: 'Rangel XLT',
age: 4,
price:15,
photo: 'fordrangerxlt.jpg',
Reg: '2000-16-D',
color: 'Blue',
version: '5 Seater',
garage_id: 1)
#......

Customer.create(name: 'Laura Kelly',
email: 'LK@gmail.com',
age: Date.parse('1995-April-21'),
insurance_type:2,
full_licance: true,
phone: '08615233654',
address: '142 Evergreen Terice',
PPSN: '6r44kl2')

Rental.create(startDate: Date.parse('2005-April-21'),
endDate: Date.parse('2005-May-21'),
paid: 8.50,
car_id: 1,
customer_id: 1)

Employee.create(name: 'Martin Kelly',
password: 'eldest',
password_confirmation: 'eldest',
email: 'MK@gmail.xom',
address: '142 Evergreen Terice',
phone: '08615233654',
experience: '5 years',
garage_id: 1,
role: 'Manager')

Garage.create(name: 'Drive Away',
address: '19 Seafield Drive',
full: false,
phone: '0851142147',
manageName: 'Owen Quinn')


