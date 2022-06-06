require 'open-uri'
# require "byebug"

puts 'Destroy db of quiltmemory...'

ScrapbookMemory.destroy_all
Scrapbook.destroy_all
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
user5 = User.create(email: "blinktravis@gmail.com", password: "123456", first_name: "Travis", last_name: "Barker", age: Date.new(1982,12,12))
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
photo12 = URI.open('https://ichef.bbci.co.uk/news/640/cpsprodpb/3A7A/production/_106307941_group.jpg')
family1.photo.attach(io: photo12, filename: 'file12.jpg', content_type: 'image/jpeg')
family2 = Family.create(family_name:"Skywalker" , description:"Family from a galaxy far far away. The father is super mean and brothers were raised apart. Now trying to rebuild that relationship.", user:user10)
photo13 = URI.open('https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2Fdorksideoftheforce.com%2Ffiles%2F2021%2F01%2FSkywalker-a-family-at-war-cover-web-28xlsw.jpg')
family2.photo.attach(io: photo13, filename: 'file13.jpg', content_type: 'image/jpeg')
family3 = Family.create(family_name:"Targeryan" , description:"Love for fire is never a good thing. Unless your are a real Targeryan. BYD, bring your own dragon. We only marry royalty and have a taste for incest.", user:user17)
photo14 = URI.open('https://prismacientifico.files.wordpress.com/2014/09/daenerys-and-viserys-house-targaryen-30464450-1280-720.jpg')
family3.photo.attach(io: photo14, filename: 'file14.jpg', content_type: 'image/jpeg')
family4 = Family.create(family_name:"Corleone" , description:"A godfather is born!", user:user17)
photo15 = URI.open('https://static.wixstatic.com/media/f1f948_0f301140db024972bd5734681611e018~mv2.png/v1/fill/w_835,h_420,al_c/f1f948_0f301140db024972bd5734681611e018~mv2.png')
family4.photo.attach(io: photo15, filename: 'file15.png', content_type: 'image/png')

family5 = Family.create(family_name:"Simpsons" , description:"We stayed forever with same age", user:user16)
photo16 = URI.open('https://www.liveabout.com/thmb/lmXH_qkltl-jiF65ZujTQ2_5k7Q=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/simpsons1920-58b5a0013df78cdcd87a03bc.jpg')
family5.photo.attach(io: photo16, filename: 'file16.jpg', content_type: 'image/jpg')

family6 = Family.create(family_name:"Manson Family" , description:"Stay away from charismatic leaders and drugs, kids!", user:user15)
photo17 = URI.open('https://br.web.img3.acsta.net/r_1280_720/pictures/15/02/26/18/03/287837.jpg')
family6.photo.attach(io: photo17, filename: 'file17.jpg', content_type: 'image/jpg')



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
#kim k
memory1 = Memory.create!(title:"I wore Marilyn Monroe Dress", description:"I only eat nothing but tomatoes for 2 weeks. Damn you Marilyn you were skinny",date:Date.new(2022,3,22), location:"New York",user:user1)
memory1.photo.attach(
  io: URI.open('https://conteudo.imguol.com.br/c/entretenimento/b5/2022/05/02/kim-kardashian--jean-louis-1651539650959_v2_450x600.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
  )
  memory1.save!
memory2 = Memory.create(title:"Birth of North West", description:"The day I felt complete, I never knew I could be so happy",date:Date.new(2017,5,15), location:"California", user:user1)
file2 = URI.open('https://stylecaster.com/wp-content/uploads/2013/08/bsxvzmzceaif3wx.jpeg?resize=768,879')
memory2.photo.attach(io: file2, filename: 'file2.jpg', content_type: 'image/jpeg')
memory3 = Memory.create(title:"Marriage to Kanye", description:"I really loved Kanye. I was so happy", date:Date.new(2016,7,22), location:"Kalabassas", user:user1)
photo3 = URI.open('https://www.geo.tv/assets/uploads/updates/2021-08-27/367371_5495181_updates.jpg')
memory3.photo.attach(io: photo3, filename: 'photo3.jpg', content_type: 'image/jpg')
memory4 = Memory.create(title:"My Perfume lauch", description:"The first step of the Kardashians' empire",date:Date.new(2006,6,16), location:"Los Angeles", user:user1)
photo4 = URI.open('https://c8.alamy.com/comp/BTRKNB/kim-kardashian-fragrance-launch-BTRKNB.jpg')
memory4.photo.attach(io: photo4, filename: 'photo4.jpg', content_type: 'image/jpg')
memory5 = Memory.create(title:"The first episode", description:"The Kardashians are HERE.",date:Date.new(2002,12,12), location:"Calabassas", user:user1)
photo5 = URI.open('https://pyxis.nymag.com/v1/imgs/0ca/3e5/ce5a9dd47416d04b9b666c273dcf8f2f14-18-keeping-up-with-the-kardashians-seaso.rsquare.w700.jpg')
memory5.photo.attach(io: photo5, filename: 'photo5.jpg', content_type: 'image/jpg')
memory6 = Memory.create(title:"The first time I got drunk", description:"I'm never drinking again!!!",date:Date.new(2006,10,2), location:"Los Angeles", user:user1)
photo6 = URI.open('https://i.pinimg.com/736x/66/67/84/666784121914e54f8a8824fb61673d78--drunk-in-love-paris-hilton.jpg')
memory6.photo.attach(io: photo6, filename: 'photo6.jpg', content_type: 'image/jpg')

#Travis Barker
memory7 = Memory.create(title:"Me and my homies", description: "Just chillin... Those were the days", date:Date.new(2006,06,10), location:"Los Anjos", user:user5)
photo7 = URI.open('https://studiosol-a.akamaihd.net/gcs/cifra-blog/pt/wp-content/uploads/2021/08/f085491-mgk-yungblud-travis_emo-pop-punk.jpg')
memory7.photo.attach(io: photo7, filename: 'photo7.jpg', content_type: 'image/jpg')

memory8 = Memory.create(title:"Rock'n'roll is not dead!", description: "Playing drums naked for Blink 182", date:Date.new(2000,06,10), location:"Los Anjos", user:user5)
photo8 = URI.open('https://www.ultimate-guitar.com/static/article/news/9/69049_0_wide_ver1524585782.jpg')
memory8.photo.attach(io: photo8, filename: 'photo8.jpg', content_type: 'image/jpg')

memory9 = Memory.create(title:"Love partying!", description: "I will party until I'm dead! Travis is the KIIIING!", date:Date.new(2003,06,10), location:"Los Anjos", user:user5)
photo9 = URI.open('https://www.etonline.com/sites/default/files/images/2019-06/blink182_enemaofthestate.jpg')
memory9.photo.attach(io: photo9, filename: 'photo9.jpg', content_type: 'image/jpg')

memory10 = Memory.create(title:"Playing drums at Steve Aoki party", description: "Love playing drums. F*ck you jazz drumers. Thank god for Punk Rock!", date:Date.new(2004,06,10), location:"Los Anjos", user:user5)
photo10 = URI.open('https://beatforbeat.com.br/site/wp-content/uploads/2016/08/Aoki-1.jpg')
memory10.photo.attach(io: photo10, filename: 'photo10.jpg', content_type: 'image/jpg')

memory11 = Memory.create(title:"Kourtney and Travis go to Venice", description: "Kourtney doesn't know yet but I will propose", date:Date.new(2021,06,10), location:"Venice", user: user5)
photo11 = URI.open('https://www.usmagazine.com/wp-content/uploads/2021/10/Kourtney-Kardashian-Travis-Barker-Want-Baby-Together-Without-Any-Doubt-0001.jpg?w=1600&quality=86&strip=all')
memory11.photo.attach(io: photo11, filename: 'photo11.jpg', content_type: 'image/jpg')

#Scrapbook seeds

scrap1 = Scrapbook.create(scrapbook_title: "Summer Holidays 2020", scrapbook_description: "Best Holidays in my life", user:user1, family:family1)
scrap2 = Scrapbook.create(scrapbook_title: "Christmas with autie Velma", scrapbook_description: "Autie Velma is the best", user:user1, family:family1)
scrap3 = Scrapbook.create(scrapbook_title: "North West growing up", scrapbook_description: "My little one is so big", user:user1, family:family1)
scrap4 = Scrapbook.create(scrapbook_title: "Divorce party", scrapbook_description: "That's why god created divorces", user:user1, family:family1)
scrap5 = Scrapbook.create(scrapbook_title: "Christmas parties", scrapbook_description: "All Christmas from 1984 til 2021", user:user1, family:family1)
scrap6 = Scrapbook.create(scrapbook_title: "Going out with my friends", scrapbook_description: "Party like it's 1994", user:user1, family:family1)
scrap7 = Scrapbook.create(scrapbook_title: "Just a perfect day", scrapbook_description: "Drink sangria in the park", user:user1, family:family1)

#MemoryScrapbook

Memscrap1 = ScrapbookMemory.create(memory: memory1, scrapbook: scrap4)
Memscrap2 = ScrapbookMemory.create(memory: memory2, scrapbook: scrap4)
Memscrap3 = ScrapbookMemory.create(memory: memory3, scrapbook: scrap4)
Memscrap4 = ScrapbookMemory.create(memory: memory4, scrapbook: scrap4)
Memscrap5 = ScrapbookMemory.create(memory: memory5, scrapbook: scrap4)
Memscrap6 = ScrapbookMemory.create(memory: memory6, scrapbook: scrap4)
Memscrap7 = ScrapbookMemory.create(memory: memory7, scrapbook: scrap7)
Memscrap8 = ScrapbookMemory.create(memory: memory8, scrapbook: scrap7)
Memscrap9 = ScrapbookMemory.create(memory: memory9, scrapbook: scrap7)
Memscrap10 = ScrapbookMemory.create(memory: memory10, scrapbook: scrap7)
Memscrap11 = ScrapbookMemory.create(memory: memory11, scrapbook: scrap7)
