puts "Deleting the database..."

User.destroy_all
Interest.destroy_all
#potentially add FriendRequest.destroy_all

puts "Seeding the database"

# ------------------------------------------Old and young users-----------------------------

john = User.create(first_name: "John", last_name: "User", email: "john@gmail.com", password: "123456", phone_number: "+49 123 456 78",
  bio: "Spent 5 years working with business development and marketing in large multination companies in Copenhagen (Novo Nordisk & Coloplast). Prior to that I studied business administration and management in several countries around the world on a bachelor and master level (Sweden, Canada, South Korea, Netherlands, Australia, Singapore). I want to take the leap into the world of tech. I absolutely love programming and want to get a position as a developer when I finish the program. I have an interest and passion for how we can drive positive social change in the world through technology. I believe technology can help build more sustainable and inclusive societies – the tech world is moving fast and I want to be part of shaping its path. I am particularly interested in AI technology and IoT.",
  motivation: "I always spnent a lot of time with my grandparents, but since we moved away, I am missing the company of people, which have a totally differnt view on things and story than I have. That is why i would really like to spend time with someone with so much life experience and stories as they have.",
  location: "Pilekrogen 1, 2730 Herlev",
  profile_picture_url: "https://cdn.shopify.com/s/files/1/0691/5403/t/141/assets/avatar-dhg.png?3166923016212737268")

bill = User.create(first_name: "Bill", last_name: "Murray", email: "bill@gmail.com", password: "123456",
  bio: "Born in 1950 in Illinois, I eventually relocated to New York City, where I took my comedic talents to radio's National Lampoon Hour. In 1975, I was in an off-Broadway spin-off of the comedy radio show when Howard Cosell recruited me for a show called Saturday Night Live. Meanwhile, Lorne Michaels had his own Saturday Night Live running concurrently, and when I joined the cast in 1976, I began crafting the comedic persona that became my calling card for many films to come, from Stripes to Caddyshack. In my later career, I took on more seriocomic roles in many of director Wes Anderson's movies, as well as Sofia Coppola’s Lost in Translation (2003), which earned me an Oscar nomination for best actor.",
  motivation: "",
  location: "Rådmandsgade 84, 2200 København N",
  young: false,
  profile_picture_url: "https://pbs.twimg.com/profile_images/650100474226458625/-nngF2Y1.jpg")

mariha = User.create(first_name: "Mariha", last_name: "Carey", email: "mariha@gmail.com", password: "123456",
  bio: "I was born March 27, 1970, in Huntington, Long Island, New York, and began taking voice lessons at age four. At 18 I signed with Columbia records, and my first album had four No. 1 singles, including 'Vision of Love' and 'I Don't Wanna Cry.' I went on to produce several more albums (later with other studios) and top singles, and I am one of the best-selling female artists of all time.",
  motivation: "",
  location: "Septembervej 74-118, 2730 Herlev",
  young: false,
  profile_picture_url: "https://image.gala.de/21391316/uncropped-0-0/770c3c820687ddb9243b75032dcba3b6/fJ/mariah-carey.jpg")

della = User.create(first_name: "Della", last_name: "Reese", email: "della@gmail.com", password: "123456",
  bio: "Born in Michigan in 1931, I began making records and performing on television variety shows in the 1950s. From 1969 to 1970, I hosted a TV talk show called Della, and went on to appear in many other series over the decades, including Sanford and Son and Picket Fences. In 1987, I was nominated for a gospel music Grammy Award (best female soloist), and in the 1990s I landed a starring role on the hit television drama Touched by an Angel.",
  motivation: "",
  location: "Vordingborggade 37-35, 2100 København Ø",
  young: false,
  profile_picture_url: "http://i2.wp.com/radaronline.com/wp-content/uploads/2016/08/Della-Reese-Sick-Dying-Brain-Damage-Diabetes-pp1.jpg?resize=540%2C400")

aung = User.create(first_name: "Aung San", last_name: "Suu Kyi", email: "aung_san@gmail.com", password: "123456",
  bio: "Born in Yangon, Myanmar, in 1945, I spent much of my early adult years abroad before returning home and becoming an activist against the brutal rule of dictator U Ne Win. I was placed under house arrest in 1989 and spent 15 of the next 21 years in custody, winning the 1991 Nobel Prize for Peace along the way. I was finally released from house arrest in November 2010 and subsequently held a seat in parliament for the National League for Democracy (NLD) party. Following the NLD's victory in 2016 parliamentary elections, I became the de facto head of the country in the new role of state counsellor. ",
  motivation: "",
  location: "Holbergsgade 19-11, 1057 København K",
  young: false,
  profile_picture_url: "http://static3.uk.businessinsider.com/image/56457a64dd08955c5a8b47c8/aung-san-suu-kyi-has-won-myanmars-historic-election-ending-decades-of-military-rule.jpg")

angela = User.create(first_name: "Angela", last_name: "Merkel", email: "angela@gmail.com", password: "123456",
  bio: "I was born in Hamburg, West Germany, on July 17, 1954. Trained as a physicist, I entered politics after the 1989 fall of the Berlin Wall. Rising to the position of chairwoman of the Christian Democratic Union party, I eventually became Germany's first female chancellor and one of the leading figures of the European Union, following the 2005 national elections.",
  motivation: "",
  location: "Kristen Bernikows Gade 13-1, 1100 København K",
  young: false,
  profile_picture_url: "https://www.welt.de/img/debatte/kommentare/mobile162745324/2262507247-ci102l-w1024/kombo-angela-merkel-martin-schulz.jpg")

jesse = User.create(first_name: "Jesse", last_name: "Jackson", email: "jesse@gmail.com", password: "123456",
  bio: "I was born October 8, 1941, in Greenville, South Carolina. While an undergraduate, I became involved in the civil rights movement. In 1965, I went to Selma, Alabama, to march with Dr. Martin Luther King Jr. In the 1980s, I became a leading national spokesman for African Americans. I was later appointed special envoy to Africa, and in 2000 I was awarded the Presidential Medal of Freedom.",
  motivation: "",
  location: "Kristianiagade 16, 2100 København Ø",
  young: false,
  profile_picture_url: "https://www.biography.com/.image/t_share/MTE4MDAzNDEwNTY3OTg4NzUw/jesse-jackson-9351181-1-402.jpg")

meryl = User.create(first_name: "Meryl", last_name: "Streep", email: "meryl@gmail.com", password: "123456",
  bio: "I was born on June 22, 1949, in Summit, New Jersey. I began my career on the New York stage in the late 1960s and appeared in several Broadway productions. I transitioned to films in the 1970s and soon I began earning major accolades, eventually winning Oscars for Kramer vs. Kramer, Sophie's Choice and The Iron Lady, among a league of nominations. Equally able to wow audiences in drama, comedy and musicals, I have come to be considered one of the greatest actresses of our time.",
  motivation: "",
  location: "Indre By, Kopenhagen",
  young: false,
  profile_picture_url: "https://pmcvariety.files.wordpress.com/2016/04/meryl-streep.jpg?w=700&h=393&crop=1")

jeffrey = User.create(first_name: "Jeffrey", last_name: "Tambor", email: "jeffrey@gmail.com", password: "123456",
  bio: "Born in 1944 in San Francisco, California, I got my start in the industry after taking acting classes as an adolescent. I went on to study acting at Wayne State University, later teaching theater at my alma mater. In 1981, Tambor found recurring work playing different characters on the popular series Three's Company and its spin-off The Ropers. From there, I starred on several television series before landing one of his biggest roles: playing Hank Kingsley on The Larry Sanders Show (1992-98). After the show's six-year run, I returned to the spotlight with a featured part on the popular TV comedy Arrested Development (2003-06, 2013) and the online series Transparent (2014), for which I have won a Golden Globe and multiple Emmys.",
  motivation: "",
  location: "Elbchaussee 251, Hamburg, Germany",
  young: false,
  profile_picture_url: "https://timedotcom.files.wordpress.com/2017/11/gettyimages-846660080.jpg")

#------------------------------------------------Interests----------------------------------------------------

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


#-----------------------------------------Assigning Interests to Users----------------------------------------------


UserInterest.create(user: john, interest: soccer)
UserInterest.create(user: john, interest: chess)
UserInterest.create(user: john, interest: rock_and_roll)
UserInterest.create(user: john, interest: piano)
UserInterest.create(user: john, interest: bowling)
UserInterest.create(user: john, interest: singing)
UserInterest.create(user: bill, interest: baking)
UserInterest.create(user: bill, interest: movies)
UserInterest.create(user: bill, interest: gardening)
UserInterest.create(user: bill, interest: chess)
UserInterest.create(user: bill, interest: art)
UserInterest.create(user: mariha, interest: art)
UserInterest.create(user: mariha, interest: singing)
UserInterest.create(user: mariha, interest: cooking)
UserInterest.create(user: mariha, interest: baking)
UserInterest.create(user: mariha, interest: rock_and_roll)
UserInterest.create(user: della, interest: bowling)
UserInterest.create(user: della, interest: dogs)
UserInterest.create(user: della, interest: soccer)
UserInterest.create(user: aung, interest: classical_music)
UserInterest.create(user: aung, interest: piano)
UserInterest.create(user: aung, interest: board_games)
UserInterest.create(user: aung, interest: movies)
UserInterest.create(user: angela, interest: movies)
UserInterest.create(user: angela, interest: gardening)
UserInterest.create(user: angela, interest: golf)
UserInterest.create(user: angela, interest: dogs)
UserInterest.create(user: jesse, interest: bowling)
UserInterest.create(user: jesse, interest: art)
UserInterest.create(user: jesse, interest: singing)
UserInterest.create(user: jesse, interest: soccer)
UserInterest.create(user: jesse, interest: chess)
UserInterest.create(user: jesse, interest: baking)
UserInterest.create(user: meryl, interest: soccer)
UserInterest.create(user: meryl, interest: piano)
UserInterest.create(user: meryl, interest: rock_and_roll)
UserInterest.create(user: meryl, interest: golf)
UserInterest.create(user: meryl, interest: board_games)
UserInterest.create(user: jeffrey, interest: board_games)
UserInterest.create(user: jeffrey, interest: chess)

#----------------------------------------New friend requests-------------------------------

FriendRequest.create(young_user: john, old_user: jesse, request_message: "Dear Jesse, I have seen on your profile, that you are a soccer fan. I am playing almost every weekend, maybe you could come and watch (in Nørrebro). Aftewards we could grab a drink, if you would like that. Best, John")
FriendRequest.create(young_user: john, old_user: mariha, request_message: "Dear Mariha, I found your bio to be really interesting, because I am also aspiring to become a singer just like you. Do you maybe want to meet up one day for a walk? Best regards, John")
FriendRequest.create(young_user: john, old_user: jeffrey, request_message: "Hi Jeffrey! I have seen, you are interested in board games and chess, just like I am. Do you want to play a round of chess next Tuesday? Looking forward to hear from you. Best, John")

puts "Seeding done"
