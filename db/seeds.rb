puts "Deleting the database..."

UserInterest.destroy_all
User.destroy_all
Interest.destroy_all
#potentially add FriendRequest.destroy_all

puts "Seeding the database"

# ------------------------------------------Old and young users-----------------------------

# YOUNG USER
john = User.create(first_name: "John", last_name: "Smith", email: "john@gmail.com", password: "123456", phone_number: "+49 123 456 78",
  bio: "Spent 5 years working with business development and marketing in large multination companies in Copenhagen (Novo Nordisk & Coloplast). Prior to that I studied business administration and management in several countries around the world on a bachelor and master level (Sweden, Canada, South Korea, Netherlands, Australia, Singapore). I want to take the leap into the world of tech. I absolutely love programming and want to get a position as a developer when I finish the program. I have an interest and passion for how we can drive positive social change in the world through technology. I believe technology can help build more sustainable and inclusive societies – the tech world is moving fast and I want to be part of shaping its path. I am particularly interested in AI technology and IoT.",
  motivation: "I always spent a lot of time with my grandparents, but since we moved away, I am missing the company of people, which have a totally differnt view on things and story than I have. That is why i would really like to spend time with someone with so much life experience and stories as they have.",
  location: "Nørrebrogade 174, 2200 København N",
  profile_picture_url: "http://4.bp.blogspot.com/-Eayf2puE1cA/TdOLyOMW7cI/AAAAAAAAM5o/ll6_7PZ5-Vo/s800/a1.jpg")


# ----------------OLD USERS--------------------------------------------

# ----------------OLD USERS--COPENHAGEN--------------------------------

christopher = User.create(first_name: "Christopher", last_name: "Washington", email: "christopher@gmail.com", password: "123456",
  bio: "Born in 1950 in Illinois, I eventually relocated to New York City, where I took my comedic talents to radio's National Lampoon Hour. In 1975, I was in an off-Broadway spin-off of the comedy radio show when Howard Cosell recruited me for a show called Saturday Night Live. Meanwhile, Lorne Michaels had his own Saturday Night Live running concurrently, and when I joined the cast in 1976, I began crafting the comedic persona that became my calling card for many films to come, from Stripes to Caddyshack. In my later career, I took on more seriocomic roles in many of director Wes Anderson's movies, as well as Sofia Coppola’s Lost in Translation (2003), which earned me an Oscar nomination for best actor.",
  motivation: "",
  location: "Thorsgade 55, 2200 København N",
  young: false,
  profile_picture_url: "https://images.pexels.com/photos/160020/pexels-photo-160020.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb
")

sarah = User.create(first_name: "Sarah", last_name: "Knudsen", email: "sarah@gmail.com", password: "123456",
  bio: "I was born March 27, 1970, in Huntington, Long Island, New York, and began taking voice lessons at age four. At 18 I signed with Columbia records, and my first album had four No. 1 singles, including 'Vision of Love' and 'I Don't Wanna Cry.' I went on to produce several more albums (later with other studios) and top singles, and I am one of the best-selling female artists of all time.",
  motivation: "",
  location: "Septembervej 74-118, 2730 Herlev",
  young: false,
  profile_picture_url: "https://images.pexels.com/photos/432722/pexels-photo-432722.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb")

mette = User.create(first_name: "Mette", last_name: "Larsen", email: "mette@gmail.com", password: "123456",
  bio: "Born in Michigan in 1931, I began making records and performing on television variety shows in the 1950s. From 1969 to 1970, I hosted a TV talk show called Della, and went on to appear in many other series over the decades, including Sanford and Son and Picket Fences. In 1987, I was nominated for a gospel music Grammy Award (best female soloist), and in the 1990s I landed a starring role on the hit television drama Touched by an Angel.",
  motivation: "",
  location: "Vordingborggade 37-35, 2100 København Ø",
  young: false,
  profile_picture_url: "https://image1.masterfile.com/getImage/NjAwLTAwOTgzODE3ZW4uMDAwMDAwMDA=ABffkH/600-00983817en_Masterfile.jpg")

leonore = User.create(first_name: "Leonore", last_name: "Costello", email: "leonore@gmail.com", password: "123456",
  bio: "Born in Yangon, Myanmar, in 1945, I spent much of my early adult years abroad before returning home and becoming an activist against the brutal rule of dictator U Ne Win. I was placed under house arrest in 1989 and spent 15 of the next 21 years in custody, winning the 1991 Nobel Prize for Peace along the way. I was finally released from house arrest in November 2010 and subsequently held a seat in parliament for the National League for Democracy (NLD) party. Following the NLD's victory in 2016 parliamentary elections, I became the de facto head of the country in the new role of state counsellor. ",
  motivation: "",
  location: "Holbergsgade 19-11, 1057 København K",
  young: false,
  profile_picture_url: "http://art-sheep.com/wp-content/uploads/2015/04/tattooed-seniors-elderly-28.jpg")

mathilde = User.create(first_name: "Mathilde", last_name: "Hesse", email: "mathilde@gmail.com", password: "123456",
  bio: "I was born in Hamburg, West Germany, on July 17, 1954. Trained as a physicist, I entered politics after the 1989 fall of the Berlin Wall. Rising to the position of chairwoman of the Christian Democratic Union party, I eventually became Germany's first female chancellor and one of the leading figures of the European Union, following the 2005 national elections.",
  motivation: "I am a grandmother of four and always really enjoyed their company. But since I have to run a whole fucking country, they decided to move away from my 'Mutti' instintcs. That is why I would love to spend some time with an innocent human being.",
  location: "Kristen Bernikows Gade 13-1, 1100 København K",
  young: false,
  profile_picture_url: "https://pbs.twimg.com/media/BnXSEwjCAAE2cUW.jpg")

sunny = User.create(first_name: "Sunny", last_name: "Yeung", email: "sunny@gmail.com", password: "123456",
  bio: "I was born October 8, 1941, in Greenville, South Carolina. While an undergraduate, I became involved in the civil rights movement. In 1965, I went to Selma, Alabama, to march with Dr. Martin Luther King Jr. In the 1980s, I became a leading national spokesman for African Americans. I was later appointed special envoy to Africa, and in 2000 I was awarded the Presidential Medal of Freedom.",
  motivation: "",
  location: "Kristianiagade 16, 2100 København Ø",
  young: false,
  profile_picture_url: "https://ak5.picdn.net/shutterstock/videos/12335255/thumb/1.jpg?i10c=img.resize(height:160)")

johan = User.create(first_name: "Johan", last_name: "Strauss", email: "johan@gmail.com", password: "123456",
  bio: "I was born on June 22, 1949, in Summit, New Jersey. I began my career on the New York stage in the late 1960s and appeared in several Broadway productions. I transitioned to films in the 1970s and soon I began earning major accolades, eventually winning Oscars for Kramer vs. Kramer, Sophie's Choice and The Iron Lady, among a league of nominations. Equally able to wow audiences in drama, comedy and musicals, I have come to be considered one of the greatest actresses of our time.",
  motivation: "",
  location: "Indre By, Kopenhagen",
  young: false,
  profile_picture_url: "https://images.pexels.com/photos/53159/man-old-fisherman-portrait-53159.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb")

fatima = User.create(first_name: "Fatima", last_name: "Portakal", email: "fatima@gmail.com", password: "123456",
  bio: "Born in 1944 in San Francisco, California, I got my start in the industry after taking acting classes as an adolescent. I went on to study acting at Wayne State University, later teaching theater at my alma mater. In 1981, Tambor found recurring work playing different characters on the popular series Three's Company and its spin-off The Ropers. From there, I starred on several television series before landing one of his biggest roles: playing Hank Kingsley on The Larry Sanders Show (1992-98). After the show's six-year run, I returned to the spotlight with a featured part on the popular TV comedy Arrested Development (2003-06, 2013) and the online series Transparent (2014), for which I have won a Golden Globe and multiple Emmys.",
  motivation: "",
  location: "Sjællandsgade 11, 2200 København N",
  young: false,
  profile_picture_url: "http://turkishtravelblog.com/wp-content/uploads/2012/06/Maral-woman.jpg")

oscar = User.create(first_name: "Oscar", last_name: "von Sydow", email: "oscar@gmail.com", password: "123456",
  bio: "Born in 1944 in San Francisco, California, I got my start in the industry after taking acting classes as an adolescent. I went on to study acting at Wayne State University, later teaching theater at my alma mater. In 1981, Tambor found recurring work playing different characters on the popular series Three's Company and its spin-off The Ropers. From there, I starred on several television series before landing one of his biggest roles: playing Hank Kingsley on The Larry Sanders Show (1992-98). After the show's six-year run, I returned to the spotlight with a featured part on the popular TV comedy Arrested Development (2003-06, 2013) and the online series Transparent (2014), for which I have won a Golden Globe and multiple Emmys.",
  motivation: "",
  location: "Sigurdsgade 26, 2200 København N",
  young: false,
  profile_picture_url: "http://sqwanjia.net/data/out/92/39490887-old-people.jpg")


# ----------------OLD USERS---HAMBURG--------------------------------------

stefan = User.create(first_name: "Stefan", last_name: "Borgnon", email: "stefan@gmail.com", password: "123456",
  bio: "Born in Yangon, Myanmar, in 1945, I spent much of my early adult years abroad before returning home and becoming an activist against the brutal rule of dictator U Ne Win. I was placed under house arrest in 1989 and spent 15 of the next 21 years in custody, winning the 1991 Nobel Prize for Peace along the way. I was finally released from house arrest in November 2010 and subsequently held a seat in parliament for the National League for Democracy (NLD) party. Following the NLD's victory in 2016 parliamentary elections, I became the de facto head of the country in the new role of state counsellor. ",
  motivation: "",
  location: "Poststraße 12, 20354 Hamburg, Germany",
  young: false,
  profile_picture_url: "http://farm4.static.flickr.com/3219/2281588072_7475ff752a.jpg")

patrice = User.create(first_name: "Patrice", last_name: "Okafor", email: "patrice@gmail.com", password: "123456",
  bio: "I was born in Hamburg, West Germany, on July 17, 1954. Trained as a physicist, I entered politics after the 1989 fall of the Berlin Wall. Rising to the position of chairwoman of the Christian Democratic Union party, I eventually became Germany's first female chancellor and one of the leading figures of the European Union, following the 2005 national elections.",
  motivation: "I am a grandmother of four and always really enjoyed their company. But since I have to run a whole fucking country, they decided to move away from my 'Mutti' instintcs. That is why I would love to spend some time with an innocent human being.",
  location: "Hohe Bleichen 13, 20354 Hamburg, Germany",
  young: false,
  profile_picture_url: "https://thoughtcatalog.files.wordpress.com/2014/08/shutterstock_27256408.jpg?w=786&h=524")

mesut = User.create(first_name: "Mesut", last_name: "Ekmekci", email: "sunny@gmail.com", password: "123456",
  bio: "I was born October 8, 1941, in Greenville, South Carolina. While an undergraduate, I became involved in the civil rights movement. In 1965, I went to Selma, Alabama, to march with Dr. Martin Luther King Jr. In the 1980s, I became a leading national spokesman for African Americans. I was later appointed special envoy to Africa, and in 2000 I was awarded the Presidential Medal of Freedom.",
  motivation: "",
  location: "Jungfernstieg 38, 20354 Hamburg, Germany",
  young: false,
  profile_picture_url: "https://dosambr.files.wordpress.com/2010/12/308914493_2a2d7a14c91.jpg")

ilsa = User.create(first_name: "Ilsa", last_name: "Hanson", email: "ilsa@gmail.com", password: "123456",
  bio: "I was born on June 22, 1949, in Summit, New Jersey. I began my career on the New York stage in the late 1960s and appeared in several Broadway productions. I transitioned to films in the 1970s and soon I began earning major accolades, eventually winning Oscars for Kramer vs. Kramer, Sophie's Choice and The Iron Lady, among a league of nominations. Equally able to wow audiences in drama, comedy and musicals, I have come to be considered one of the greatest actresses of our time.",
  motivation: "",
  location: "Neuer Wall 64, 20354 Hamburg, Germany",
  young: false,
  profile_picture_url: "http://www.nursinghomecare.ie/wp-content/uploads/happy-old-lady.jpg")

emma = User.create(first_name: "Emma", last_name: "Müller", email: "emma@gmail.com", password: "123456",
  bio: "Born in 1944 in San Francisco, California, I got my start in the industry after taking acting classes as an adolescent. I went on to study acting at Wayne State University, later teaching theater at my alma mater. In 1981, Tambor found recurring work playing different characters on the popular series Three's Company and its spin-off The Ropers. From there, I starred on several television series before landing one of his biggest roles: playing Hank Kingsley on The Larry Sanders Show (1992-98). After the show's six-year run, I returned to the spotlight with a featured part on the popular TV comedy Arrested Development (2003-06, 2013) and the online series Transparent (2014), for which I have won a Golden Globe and multiple Emmys.",
  motivation: "",
  location: "Große Bleichen 23, 20354 Hamburg, Germany",
  young: false,
  profile_picture_url: "http://www.advanced.style/media/IMG_0954.jpg")


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

#------------COPENHAGEN--USER--INTERESTS------------------

UserInterest.create(user: john, interest: soccer)
UserInterest.create(user: john, interest: chess)
UserInterest.create(user: john, interest: rock_and_roll)
UserInterest.create(user: john, interest: piano)
UserInterest.create(user: john, interest: bowling)
UserInterest.create(user: john, interest: singing)


UserInterest.create(user: christopher, interest: baking)
UserInterest.create(user: christopher, interest: movies)
UserInterest.create(user: christopher, interest: gardening)
UserInterest.create(user: christopher, interest: chess)
UserInterest.create(user: christopher, interest: art)


UserInterest.create(user: sarah, interest: art)
UserInterest.create(user: sarah, interest: singing)
UserInterest.create(user: sarah, interest: cooking)
UserInterest.create(user: sarah, interest: baking)
UserInterest.create(user: sarah, interest: rock_and_roll)


UserInterest.create(user: mette, interest: bowling)
UserInterest.create(user: mette, interest: dogs)
UserInterest.create(user: mette, interest: soccer)


UserInterest.create(user: leonore, interest: classical_music)
UserInterest.create(user: leonore, interest: piano)
UserInterest.create(user: leonore, interest: board_games)
UserInterest.create(user: leonore, interest: movies)


UserInterest.create(user: mathilde, interest: movies)
UserInterest.create(user: mathilde, interest: gardening)
UserInterest.create(user: mathilde, interest: golf)
UserInterest.create(user: mathilde, interest: dogs)


UserInterest.create(user: sunny, interest: bowling)
UserInterest.create(user: sunny, interest: art)
UserInterest.create(user: sunny, interest: singing)
UserInterest.create(user: sunny, interest: soccer)
UserInterest.create(user: sunny, interest: chess)
UserInterest.create(user: sunny, interest: baking)


UserInterest.create(user: johan, interest: soccer)
UserInterest.create(user: johan, interest: piano)
UserInterest.create(user: johan, interest: rock_and_roll)
UserInterest.create(user: johan, interest: golf)
UserInterest.create(user: johan, interest: board_games)


UserInterest.create(user: fatima, interest: board_games)
UserInterest.create(user: fatima, interest: chess)


UserInterest.create(user: oscar, interest: art)
UserInterest.create(user: oscar, interest: singing)
UserInterest.create(user: oscar, interest: cooking)
UserInterest.create(user: oscar, interest: baking)
UserInterest.create(user: oscar, interest: rock_and_roll)


#--------HAMBURG--USER--INTERESTS----------------------------

UserInterest.create(user: stefan, interest: soccer)
UserInterest.create(user: stefan, interest: chess)
UserInterest.create(user: stefan, interest: rock_and_roll)
UserInterest.create(user: stefan, interest: piano)
UserInterest.create(user: stefan, interest: bowling)
UserInterest.create(user: stefan, interest: singing)


UserInterest.create(user: patrice, interest: baking)
UserInterest.create(user: patrice, interest: movies)
UserInterest.create(user: patrice, interest: gardening)
UserInterest.create(user: patrice, interest: chess)
UserInterest.create(user: patrice, interest: art)


UserInterest.create(user: mesut, interest: art)
UserInterest.create(user: mesut, interest: singing)
UserInterest.create(user: mesut, interest: cooking)
UserInterest.create(user: mesut, interest: baking)
UserInterest.create(user: mesut, interest: rock_and_roll)


UserInterest.create(user: ilsa, interest: bowling)
UserInterest.create(user: ilsa, interest: dogs)
UserInterest.create(user: ilsa, interest: soccer)


UserInterest.create(user: emma, interest: classical_music)
UserInterest.create(user: emma, interest: piano)
UserInterest.create(user: emma, interest: board_games)
UserInterest.create(user: emma, interest: movies)

#----------------------------------------New friend requests-------------------------------

# FriendRequest.create(young_user: john, old_user: jesse, request_message: "Dear Jesse, I have seen on your profile, that you are a soccer fan. I am playing almost every weekend, maybe you could come and watch (in Nørrebro). Aftewards we could grab a drink, if you would like that. Best, John")
# FriendRequest.create(young_user: john, old_user: bill, request_message: "Dear Bill, I found your bio to be really interesting, because I am also aspiring to become an actor just like you. Do you maybe want to meet up one day for a walk and talk a bit? Best regards, John")


# FriendReqsuest.create(young_user: john, old_user: jeffrey, request_message: "Hi Jeffrey! I have seen, you are interested in board games and chess, just like I am. Do you want to play a round of chess next Tuesday? Looking forward to hear from you. Best, John")

puts "Seeding done"
