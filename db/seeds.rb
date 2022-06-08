require 'open-uri'
# require "byebug"

puts 'Destroy db of quiltmemory...'

ScrapbookMemory.destroy_all
Scrapbook.destroy_all
Memory.destroy_all
UserFamily.destroy_all
Family.destroy_all
User.destroy_all

#Demoday
user1 = User.create(email: "anabandarra@gmail.com", password: "123456", first_name: "Ana", last_name: "Bandarra", age: Date.new(1984,12,15))
user2 = User.create(email: "ripaulo@gmail.com", password: "123456", first_name: "Ricardo", last_name: "Paulo", age: Date.new(1984,12,15))
user3 = User.create(email: "martanunes@gmail.com", password: "123456", first_name: "Marta", last_name: "Nunes", age: Date.new(1984,12,15))
user4 = User.create(email: "miguelito@gmail.com", password: "123456", first_name: "Carson Miguelito", last_name: "de Alcantara", age: Date.new(1984,12,15))
user5 = User.create(email: "carlossoto@gmail.com", password: "123456", first_name: "Carlos", last_name: "Soto", age: Date.new(1984,12,15))
user6 = User.create(email: "nathalieroth@gmail.com", password: "123456", first_name: "Nathalie", last_name: "Roth", age: Date.new(1984,12,15))
user7 = User.create(email: "titoromao@gmail.com", password: "123456", first_name: "Tito", last_name: "Romao", age: Date.new(1984,12,15))
user8 = User.create(email: "deliocarvalho@gmail.com", password: "123456", first_name: "Delio", last_name: "Carvalho", age: Date.new(1984,12,15))
user9 = User.create(email: "raimundohenriques@gmail.com", password: "123456", first_name: "Raimundo", last_name: "Henriques", age: Date.new(1984,12,15))
user10 = User.create(email: "ricardosilva@gmail.com", password: "123456", first_name: "Ricardo", last_name: "Silva", age: Date.new(1984,12,15))
user11 = User.create(email: "sayonarasilva@gmail.com", password: "123456", first_name: "Sayonara", last_name: "Silva", age: Date.new(1984,12,15))
user12 = User.create(email: "Larilui@gmail.com", password: "123456", first_name: "Larissa", last_name: "Hury", age: Date.new(1984,12,15))
user13 = User.create(email: "joseappletton@gmail.com", password: "123456", first_name: "Jose", last_name: "Appleton", age: Date.new(1984,12,15))
user14 = User.create(email: "guyganbaruch@gmail.com", password: "123456", first_name: "Guy", last_name: "Baruch", age: Date.new(1984,12,15))
user15 = User.create(email: "sydneyjohnson@gmail.com", password: "123456", first_name: "Sydney", last_name: "Johnson", age: Date.new(1984,12,15))
user15 = User.create(email: "rodrigonobrega@gmail.com", password: "123456", first_name: "Rodrigo", last_name: "Nobrega", age: Date.new(1984,12,15))
user16 = User.create(email: "andrasnemeth@gmail.com", password: "123456", first_name: "Andras", last_name: "Nemeth", age: Date.new(1984,12,15))
user17 = User.create(email: "dimosamouris@gmail.com", password: "123456", first_name: "Dimitris", last_name: "Samouris", age: Date.new(1984,12,15))
user18 = User.create(email: "ricardogonzales@gmail.com", password: "123456", first_name: "Ricardo", last_name: "Gonzales", age: Date.new(1984,12,15))
user19 = User.create(email: "lennartspee@gmail.com", password: "123456", first_name: "Lennart", last_name: "Spee", age: Date.new(1984,12,15))
user20 = User.create(email: "borispaillard@gmail.com", password: "123456", first_name: "Boris", last_name: "Paillard", age: Date.new(1984,12,15))


users_now = [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15, user16, user17, user18, user19, user20]

puts "Created #{users_now.count} new users"

#Families Seeds
family1 = Family.create(family_name:"Le Ouágon: batch #865", description:"The best batch ever to go to Le Wagon. Learning Web development with passion and joy!", user:user1)
photo1 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1654688543/Quilt/memories%20lewagon/IMG_6122_tcrwul.jpg')
family1.photo.attach(io: photo1, filename: 'file1.jpg', content_type: 'image/jpg')
family2 = Family.create(family_name:"Brutalescoides" , description:"Family originally from Viseu. Trying to take the world by storm", user:user1)
photo2 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1654695592/Quilt/memories%20lewagon/75c8b52c-9ea8-4f06-bed0-0826212f2344_zfckqr.jpg')
family2.photo.attach(io: photo2, filename: 'file2.jpg', content_type: 'image/jpg')
family3 = Family.create(family_name:"Bandarra-Baptista Rock'n'Roll" , description:"Life is to be lived and shared with our kids.", user:user1)
photo3 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1654695591/Quilt/memories%20lewagon/IMG_9346_fncmng.jpg')
family3.photo.attach(io: photo3, filename: 'file3.jpg', content_type: 'image/jpg')

#User Families
user1_family1 = UserFamily.create(user:user1, family:family1)
user1_family2 = UserFamily.create(user:user2, family:family2)
user3_family1 = UserFamily.create(user:user3, family:family1)
user4_family1 = UserFamily.create(user:user4, family:family1)
user5_family1 = UserFamily.create(user:user5, family:family1)
user6_family1 = UserFamily.create(user:user6, family:family1)
user7_family1 = UserFamily.create(user:user7, family:family1)
user8_family1 = UserFamily.create(user:user8, family:family1)
user9_family1 = UserFamily.create(user:user9, family:family1)
user10_family1 = UserFamily.create(user:user10, family:family1)
user11_family1 = UserFamily.create(user:user11, family:family1)
user12_family1 = UserFamily.create(user:user12, family:family1)
user13_family1 = UserFamily.create(user:user13, family:family1)
user14_family1 = UserFamily.create(user:user14, family:family1)
user15_family1 = UserFamily.create(user:user15, family:family1)
user16_family1 = UserFamily.create(user:user16, family:family1)
user17_family1 = UserFamily.create(user:user17, family:family1)

#scrapbooks

#Scrapbook seeds

scrap1 = Scrapbook.create(scrapbook_title: "Code", scrapbook_description: "Miguel, you said the worst were the first two weeks", user:user1, family:family1)
photo4 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1654688543/Quilt/memories%20lewagon/IMG_6122_tcrwul.jpg')
scrap1.photo.attach(io: photo4, filename: 'file4.jpg', content_type: 'image/jpg')

scrap2 = Scrapbook.create(scrapbook_title: "Fun", scrapbook_description: "Life has to fun", user:user1, family:family1)
photo5 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1654688543/Quilt/memories%20lewagon/IMG_6122_tcrwul.jpg')
scrap2.photo.attach(io: photo5, filename: 'file5.jpg', content_type: 'image/jpg')


scrap3 = Scrapbook.create(scrapbook_title: "Beer'o'clock", scrapbook_description: "To forget about the code", user:user1, family:family1)
photo6 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1654688543/Quilt/memories%20lewagon/IMG_6122_tcrwul.jpg')
scrap3.photo.attach(io: photo6, filename: 'file6.jpg', content_type: 'image/jpg')

scrap4 = Scrapbook.create(scrapbook_title: "Lunch and learn", scrapbook_description: "Have a slice of pizza and learn", user:user1, family:family1)
photo7 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1654688543/Quilt/memories%20lewagon/IMG_6122_tcrwul.jpg')
scrap4.photo.attach(io: photo7, filename: 'file7.jpg', content_type: 'image/jpg')

scrap5 = Scrapbook.create(scrapbook_title: "Trips to continente", scrapbook_description: "Sometimes I just need to get some fresh air", user:user1, family:family1)
photo8 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1654688543/Quilt/memories%20lewagon/IMG_6122_tcrwul.jpg')
scrap5.photo.attach(io: photo8, filename: 'file8.jpg', content_type: 'image/jpg')

#scrap6 = Scrapbook.create(scrapbook_title: "Demo day", scrapbook_description: "The future will certainly be bright after", user:user1, family:family1)

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
photo9 = URI.open('https://www.geo.tv/assets/uploads/updates/2021-08-27/367371_5495181_updates.jpg')
memory3.photo.attach(io: photo9, filename: 'photo9.jpg', content_type: 'image/jpg')
memory4 = Memory.create(title:"My Perfume lauch", description:"The first step of the Kardashians' empire",date:Date.new(2006,6,16), location:"Los Angeles", user:user1)
photo10 = URI.open('https://c8.alamy.com/comp/BTRKNB/kim-kardashian-fragrance-launch-BTRKNB.jpg')
memory4.photo.attach(io: photo10, filename: 'photo10.jpg', content_type: 'image/jpg')
memory5 = Memory.create(title:"The first episode", description:"The Kardashians are HERE.",date:Date.new(2002,12,12), location:"Calabassas", user:user1)
photo11 = URI.open('https://pyxis.nymag.com/v1/imgs/0ca/3e5/ce5a9dd47416d04b9b666c273dcf8f2f14-18-keeping-up-with-the-kardashians-seaso.rsquare.w700.jpg')
memory5.photo.attach(io: photo11, filename: 'photo11.jpg', content_type: 'image/jpg')
memory6 = Memory.create(title:"The first time I got drunk", description:"I'm never drinking again!!!",date:Date.new(2006,10,2), location:"Los Angeles", user:user1)
photo12 = URI.open('https://i.pinimg.com/736x/66/67/84/666784121914e54f8a8824fb61673d78--drunk-in-love-paris-hilton.jpg')
memory6.photo.attach(io: photo12, filename: 'photo12.jpg', content_type: 'image/jpg')




#MemoryScrapbook

Memscrap1 = ScrapbookMemory.create(memory: memory1, scrapbook: scrap1)
Memscrap2 = ScrapbookMemory.create(memory: memory2, scrapbook: scrap1)
Memscrap3 = ScrapbookMemory.create(memory: memory3, scrapbook: scrap1)
Memscrap4 = ScrapbookMemory.create(memory: memory4, scrapbook: scrap1)
Memscrap5 = ScrapbookMemory.create(memory: memory5, scrapbook: scrap1)
Memscrap6 = ScrapbookMemory.create(memory: memory6, scrapbook: scrap1)
#Memscrap7 = ScrapbookMemory.create(memory: memory7, scrapbook: scrap1)
#Memscrap8 = ScrapbookMemory.create(memory: memory8, scrapbook: scrap1)
#Memscrap9 = ScrapbookMemory.create(memory: memory9, scrapbook: scrap1)
#Memscrap10 = ScrapbookMemory.create(memory: memory10, scrapbook: scrap1)
#Memscrap11 = ScrapbookMemory.create(memory: memory11, scrapbook: scrap1)
