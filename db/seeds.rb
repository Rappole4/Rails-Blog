# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{fname: 'Robert', lname:'Rappole', username:'rappole4', password:'Birger', email:'rappole4@yahoo.com', address:'4754 Chauncey Dr Raleigh, NC 27615', admin:true}])
User.create([{fname: 'Greg', lname:'Lake', username:'model4', password:'NYC', email:'model4@yahoo.com', address:'4754 Chauncey Dr NYC, NY 10005', admin:false}])
User.create([{fname: 'Adam', lname:'Glenns', username:'chef4', password:'Raleigh', email:'chef4@yahoo.com', address:'3754 Chauncey Dr Raleigh, NC 27615', admin:false}])