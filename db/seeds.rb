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
# UserInterst.destroy_all

puts "Seeding the database"

john = User.create(first_name: "John", last_name: "User", email: "john@gmail.com", password: "123456", phone_number: "+49 123 456 78",
  bio: "",
  motivation: "",
  location: "Pilekrogen 1, 2730 Herlev")
bill = User.create(first_name: "Bill", last_name: "User", email: "bill@gmail.com", password: "123456",
  bio: "",
  motivation: "",
  location: "Pilekrogen 1, 2730 Herlev",
  young: false)
maria = User.create(first_name: "Maria", last_name: "User", email: "maria@gmail.com", password: "123456",
  bio: "",
  motivation: "",
  location: "Pilekrogen 1, 2730 Herlev",
  young: false)

soccer = Interest.create(name: "soccer".capitalize, icon_path: "interest_icons/soccer.png")
chess = Interest.create(name: "chess".capitalize, icon_path: "interest_icons/chess.png")
classical_music = Interest.create(name: "Classical Music", icon_path: "interest_icons/classical_music.png")
board_games = Interest.create(name: "Board Games", icon_path: "interest_icons/board_games.png" )
cooking = Interest.create(name: "cooking".capitalize, icon_path: "interest_icons/cooking.png" )
baking = Interest.create(name: "baking".capitalize, icon_path: "interest_icons/baking.png" )
rock_and_roll = Interest.create(name: "Rock & Roll", icon_path: "interest_icons/rock_and_roll.png" )
piano = Interest.create(name: "piano".capitalize, icon_path: "interest_icons/piano.png" )
movies = Interest.create(name: "movies".capitalize, icon_path: "interest_icons/movies.png" )
art = Interest.create(name: "art".capitalize, icon_path: "interest_icons/art.png" )
bowling = Interest.create(name: "bowling".capitalize, icon_path: "interest_icons/bowling.png" )
gardening = Interest.create(name: "gardening".capitalize, icon_path: "interest_icons/gardening.png" )
singing = Interest.create(name: "singing".capitalize, icon_path: "interest_icons/singing.png" )
golf = Interest.create(name: "golf".capitalize, icon_path: "interest_icons/golf.png" )
dogs = Interest.create(name: "dogs".capitalize, icon_path: "interest_icons/dog.png" )


UserInterest.create(user: john, interest: soccer)
UserInterest.create(user: john, interest: chess)
UserInterest.create(user: john, interest: rock_and_roll)
UserInterest.create(user: john, interest: piano)
UserInterest.create(user: john, interest: bowling)
# UserInterest.create(user_id: john, interest_id: soccer)
# UserInterest.create(user_id: maria, interest_id: gaming)
# UserInterest.create(user_id: bill, interest_id: gaming)
# UserInterest.create(user_id: john, interest_id: swimming)

puts "Seeding done"
