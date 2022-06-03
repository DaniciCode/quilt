require 'open-uri'
require "byebug"

puts 'Destroy db of quiltmemory...'

Memory.destroy_all
UserFamily.destroy_all
Family.destroy_all
User.destroy_all


#User Seeds
#kardashians

user1 = User.create(email: "kimk@gmail.com", password: "123456", first_name: "Kim", last_name: "Kardashian", age: Date.new(1981,2,2))
user2 = User.create(email: "goldigger@gmail.com", password: "123456", first_name: "Kanye", last_name: "West", age: Date.new(1978,7,13))
user3 = User.create(email: "khloe@gmail.com", password: "123456", first_name: "Khloe", last_name: "Kardashian", age: Date.new(1980,8,22))
user4 = User.create(email: "dash@gmail.com", password: "123456", first_name: "Kourtney", last_name: "Kardashian", age: Date.new(1984,10,31))
user5 = User.create(email: "blinktravis@gmail.com", password: "123456", first_name: "Travis", last_name: "Baker", age: Date.new(1982,12,12))
user6 = User.create(email: "momanager@gmail.com", password: "123456", first_name: "Kris", last_name: "Jenner", age: Date.new(1960,5,10))
user7 = User.create(email: "kylie@gmail.com", password: "123456", first_name: "Kylie", last_name: "Jenner", age: Date.new(1998,5,10))
user8 = User.create(email: "cat@gmail.com", password: "123456", first_name: "Cathelyn", last_name: "Jenner", age: Date.new(1950,5,10))
user9 = User.create(email: "kendal@gmail.com", password: "123456", first_name: "Kendall", last_name: "Jenner", age: Date.new(1996,5,10))

#skywalker
user10 = User.create(email: "lighsabre@gmail.com", password: "123456", first_name: "Luke", last_name: "Skywalker", age: Date.new(1996,5,10))
user11 = User.create(email: "donuthair@gmail.com", password: "123456", first_name: "Leia", last_name: "Skywalker", age: Date.new(1996,5,10))
user12 = User.create(email: "yourfather@gmail.com", password: "123456", first_name: "Darth", last_name: "Vader", age: Date.new(1960,5,10))
user13 = User.create(email: "heyladies@gmail.com", password: "123456", first_name: "Han", last_name: "Solo", age: Date.new(1990,5,10))

#Targeryan
user14 = User.create(email: "dothraki4eva@gmail.com", password: "123456", first_name: "Khal", last_name: "Drogo", age: Date.new(1996,5,10))
user15 = User.create(email: "iknownothing@gmail.com", password: "123456", first_name: "Jon", last_name: "Snow", age: Date.new(1996,5,10))
user16 = User.create(email: "gold@gmail.com", password: "123456", first_name: "Viserys", last_name: "Targeryan", age: Date.new(1995,5,10))
user17 = User.create(email: "motherofdragons@gmail.com", password: "123456", first_name: "Danerys", last_name: "Targeryan", age: Date.new(1990,5,10))



users_now = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15, user16, user17]

puts "Created #{users_now.count} new users"

#Families Seeds
family1 = Family.create(family_name:"Kardashians", description:"The Kardashians are here b*tches! A reality tv family so real that you can smell realness.", user:user1)
family2 = Family.create(family_name:"Skywalker" , description:"Family from a galaxy far far away. The father is super mean and brothers were raised apart. Now trying to rebuild that relationship.", user:user10)
family3 = Family.create(family_name:"Targeryan" , description:"Love for fire is never a good thing. Unless your are a real Targeryan. BYD, bring your own dragon. We only marry royalty and have a taste for incest.", user:user17)

#User Families
user1_family1 = UserFamily.create(user:user1, family:family1)
user2_family1 = UserFamily.create(user:user2, family:family1)
user3_family1 = UserFamily.create(user:user3, family:family1)
user4_family1 = UserFamily.create(user:user4, family:family1)
#user5_family1 = UserFamily.create(user:user5, family:family1)
user6_family1 = UserFamily.create(user:user6, family:family1)
user7_family1 = UserFamily.create(user:user7, family:family1)
user8_family1 = UserFamily.create(user:user8, family:family1)
user9_family1 = UserFamily.create(user:user9, family:family1)

user10_family2 = UserFamily.create(user:user10, family:family2)
user11_family2 = UserFamily.create(user:user11, family:family2)
user12_family2 = UserFamily.create(user:user12, family:family2)
user13_family2 = UserFamily.create(user:user13, family:family2)

user14_family3 = UserFamily.create(user:user14, family:family3)
user15_family3 = UserFamily.create(user:user15, family:family3)
user16_family3 = UserFamily.create(user:user16, family:family3)
user17_family3 = UserFamily.create(user:user17, family:family3)


#Memories Seeds
memory1 = Memory.create!(title:"I wore Marilyn Monroe Dress", description:"I only eat nothing but tomatoes for 2 weeks. Damn you Marilyn you were skinny",date:Date.new(2022,3,22), location:"New York",user:user1)
memory2 = Memory.create(title:"Birth of North West", description:"The day I felt complete, I never knew I could be so happy",date:Date.new(2017,5,15), location:"California", user:user1)
memory3 = Memory.create(title:"Marriage to Kanye", description:"I really loved Kanye. I was so happy", date:Date.new(2016,7,22), location:"Kalabassas", user:user1)
memory4 = Memory.create(title:"My Perfume lauch", description:"The first step of the Kardashians' empire",date:Date.new(2006,6,16), location:"Los Angeles", user:user1)
memory5 = Memory.create(title:"The first episode", description:"The Kardashians are HERE.",date:Date.new(2002,12,12), location:"Calabassas", user:user1)
memory6 = Memory.create(title:"The first time I got drunk", description:"I'm never drinking again!!!",date:Date.new(2006,10,2), location:"Los Angeles", user:user1)

#photo1 = URI.open('https://conteudo.imguol.com.br/c/entretenimento/b5/2022/05/02/kim-kardashian--jean-louis-1651539650959_v2_450x600.jpg.webp')
# memory1.photos.each do |photo|
#   photo.attach(io: photo1, filename: 'photo1.jpg', content_type: 'image/jpg')
# end

#memory1.photo.attach(io: photo1, filename: 'photo1.jpg', content_type: 'image/jpg')
#file = URI.open('https://kitt.lewagon.com/placeholder/users/arthur-littm')
#memory1.photo.attach(io: file, filename: 'arthur.jpeg', content_type: 'image/jpeg')
#memory1.save!

memory1.photo.attach(
  io: URI.open('https://conteudo.imguol.com.br/c/entretenimento/b5/2022/05/02/kim-kardashian--jean-louis-1651539650959_v2_450x600.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
  )

  memory1.save!


#photo2 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1653996493/Quilt/Seeds/Memories%20Photos/2_kkbmte.jpg')
#memory2.photo.attach(io: photo2, filename: 'photo2.jpg', content_type: 'image/jpg')

file2 = URI.open('https://stylecaster.com/wp-content/uploads/2013/08/bsxvzmzceaif3wx.jpeg?resize=768,879')
memory2.photo.attach(io: file2, filename: 'file2.jpg', content_type: 'image/jpeg')


photo3 = URI.open('https://www.geo.tv/assets/uploads/updates/2021-08-27/367371_5495181_updates.jpg')
memory3.photo.attach(io: photo3, filename: 'photo3.jpg', content_type: 'image/jpg')
photo4 = URI.open('https://c8.alamy.com/comp/BTRKNB/kim-kardashian-fragrance-launch-BTRKNB.jpg')
memory4.photo.attach(io: photo4, filename: 'photo4.jpg', content_type: 'image/jpg')
photo5 = URI.open('https://pyxis.nymag.com/v1/imgs/0ca/3e5/ce5a9dd47416d04b9b666c273dcf8f2f14-18-keeping-up-with-the-kardashians-seaso.rsquare.w700.jpg')
memory5.photo.attach(io: photo5, filename: 'photo5.jpg', content_type: 'image/jpg')
photo6 = URI.open('https://i.pinimg.com/736x/66/67/84/666784121914e54f8a8824fb61673d78--drunk-in-love-paris-hilton.jpg')
memory6.photo.attach(io: photo6, filename: 'photo6.jpg', content_type: 'image/jpg')

file7 = URI.open('https://studiosol-a.akamaihd.net/gcs/cifra-blog/pt/wp-content/uploads/2021/08/f085491-mgk-yungblud-travis_emo-pop-punk.jpg')
#do a times do with photos of Travis
#and a last one of him with kourtney

#5.times do
  #Memory.create!(title:"Rock'n'roll", description:"I wanna rock! Hell yeah. Foreva young dudes!",date:Date.new(2022,3,22), location:"New York",user:user5).photo.attach(io: photo7, filename: 'photo7.jpg', content_type: 'image/jpg')
#photo.attach(io: photo6, filename: 'photo6.jpg', content_type: 'image/jpg')end
