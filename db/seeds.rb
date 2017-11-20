# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Deleting the database..."
User.destroy_all
Interest.destroy_all

puts "Seeding the database"
john = User.create(first_name: "John", last_name: "User", email: "john@gmail.com", password: "123456")
bill = User.create(first_name: "Bill", last_name: "User", email: "bill@gmail.com", password: "123456")
maria = User.create(first_name: "Maria", last_name: "User", email: "maria@gmail.com", password: "123456")
swimming = Interest.create(name: "Swimming")
chess = Interest.create(name: "Chess")
gaming = Interest.create(name: "Gaming")
UserInterest.create(user_id: john, interest_id: swimming)
UserInterest.create(user_id: john, interest_id: chess)
UserInterest.create(user_id: maria, interest_id: gaming)
UserInterest.create(user_id: bill, interest_id: gaming)
UserInterest.create(user_id: john, interest_id: swimming)
puts "Seeding done"


#<User id: 2, email: "robin@gmail.com", created_at: "2017-11-20 13:57:57", updated_at: "2017-11-20 20:46:16", first_name: "Robin", last_name: "Bergsss", phone_number: "12345", bio: "my bio", motivation: "my motivation", location: "ahorns", young: true>,
 #<User id: 1, email: "karl@gmail.com", created_at: "2017-11-20 13:57:20", updated_at: "2017-11-20 20:55:08", first_name: "Karl", last_name: "Berg", phone_number: "12234", bio: "my bio", motivation: "my motivation", location: "skinder", young: true>]
