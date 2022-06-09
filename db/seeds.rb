require 'open-uri'
#require "byebug"

puts 'Destroy db of quiltmemory...'

ScrapbookMemory.destroy_all
Scrapbook.destroy_all
Memory.destroy_all
UserFamily.destroy_all
Family.destroy_all
User.destroy_all

# users = [
#   { email: "anabandarra@gmail.com", first_name: "Ana", last_name: "Bandarra" },
#   { email: "ripaulo@gmail.com", first_name: "Ricardo", last_name: "Paulo" }
# ]

# users.each do |user|
#   User.create(
#     email: user[:email],
#     password: "123456",
#     first_name: user[:first_name],
#     last_name: user[:last_name],
#     age: Date.new(1984,12,15)
#   )
# end

#Demoday
user1 = User.create(email: "anabandarra@gmail.com", password: "123456", first_name: "Ana", last_name: "Bandarra", age: Date.new(1984,12,15))
user2 = User.create(email: "ripaulo@gmail.com", password: "123456", first_name: "Ricardo", last_name: "Paulo", age: Date.new(1984,12,15))
user3 = User.create(email: "martanunes@gmail.com", password: "123456", first_name: "Marta", last_name: "Nunes", age: Date.new(1984,12,15))
user20 = User.create(email: "borispaillard@gmail.com", password: "123456", first_name: "Boris", last_name: "Paillard", age: Date.new(1984,12,15))
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
user15 = User.create(email: "sidneyjohnson@gmail.com", password: "123456", first_name: "Sidney", last_name: "Johnson", age: Date.new(1984,12,15))
user15 = User.create(email: "rodrigonobrega@gmail.com", password: "123456", first_name: "Rodrigo", last_name: "Nobrega", age: Date.new(1984,12,15))
user16 = User.create(email: "andrasnemeth@gmail.com", password: "123456", first_name: "Andras", last_name: "Nemeth", age: Date.new(1984,12,15))
user17 = User.create(email: "dimosamouris@gmail.com", password: "123456", first_name: "Dimitris", last_name: "Samouris", age: Date.new(1984,12,15))
user18 = User.create(email: "ricardogonzales@gmail.com", password: "123456", first_name: "Ricardo", last_name: "Gonzales", age: Date.new(1984,12,15))
user19 = User.create(email: "lennartspee@gmail.com", password: "123456", first_name: "Lennart", last_name: "Spee", age: Date.new(1984,12,15))

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

families = Family.all

Family.first(3).each do |family|
  UserFamily.create(user: User.first, family: family)

  puts "#{User.first.first_name} #{User.first.last_name} added to #{family.family_name}."
end


User.all.each_with_index do |user, index|
  next if index == 0
  UserFamily.create(user: user, family: Family.first) if user.first_name != "Boris"

  puts "#{user.first_name} #{user.last_name} added to #{Family.first.family_name}."
end

#User Families
# user2_family1 = UserFamily.create(user:user2, family:family1)
# user3_family1 = UserFamily.create(user:user3, family:family1)
# user4_family1 = UserFamily.create(user:user4, family:family1)
# user5_family1 = UserFamily.create(user:user5, family:family1)
# user6_family1 = UserFamily.create(user:user6, family:family1)
# user7_family1 = UserFamily.create(user:user7, family:family1)
# user8_family1 = UserFamily.create(user:user8, family:family1)
# user9_family1 = UserFamily.create(user:user9, family:family1)
# user10_family1 = UserFamily.create(user:user10, family:family1)
# user11_family1 = UserFamily.create(user:user11, family:family1)
# user12_family1 = UserFamily.create(user:user12, family:family1)
# user13_family1 = UserFamily.create(user:user13, family:family1)
# user14_family1 = UserFamily.create(user:user14, family:family1)
# user15_family1 = UserFamily.create(user:user15, family:family1)
# user16_family1 = UserFamily.create(user:user16, family:family1)
# user17_family1 = UserFamily.create(user:user17, family:family1)

#scrapbooks

#Scrapbook seeds

scrap1 = Scrapbook.create(scrapbook_title: "Code", scrapbook_description: "Miguel, you said the worst were the first two weeks", user:user1, family:family1)
photo4 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1654701383/Quilt/memories%20lewagon/jpeg/IMG_6762_jj4jkj_b2elum.jpg')
scrap1.photo.attach(io: photo4, filename: 'file4.jpg', content_type: 'image/jpg')

scrap2 = Scrapbook.create(scrapbook_title: "Fun", scrapbook_description: "Coding is fun for some people", user:user1, family:family1)
photo5 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1654701383/Quilt/memories%20lewagon/jpeg/IMG_6691_s8y4tx_xwfkr2.jpg')
scrap2.photo.attach(io: photo5, filename: 'file5.jpg', content_type: 'image/jpg')


scrap3 = Scrapbook.create(scrapbook_title: "Beer'o'clock", scrapbook_description: "To forget about the code", user:user1, family:family1)
photo6 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1654701387/Quilt/memories%20lewagon/jpeg/IMG_6981_dw78wf_wbpc0y.jpg')
scrap3.photo.attach(io: photo6, filename: 'file6.jpg', content_type: 'image/jpg')

scrap4 = Scrapbook.create(scrapbook_title: "Lunch and learn", scrapbook_description: "Have a slice of pizza and learn", user:user1, family:family1)
photo7 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1654688543/Quilt/memories%20lewagon/IMG_6122_tcrwul.jpg')
scrap4.photo.attach(io: photo7, filename: 'file7.jpg', content_type: 'image/jpg')

scrap5 = Scrapbook.create(scrapbook_title: "Trips to continente", scrapbook_description: "Sometimes I just need to get some fresh air", user:user1, family:family1)
photo8 = URI.open('https://agriculturaemar.com/wp-content/uploads/2018/04/Continente-Bom-Dia-Duque-de-Loul%C3%A9-3.jpg')
scrap5.photo.attach(io: photo8, filename: 'file8.jpg', content_type: 'image/jpg')

#scrap6 = Scrapbook.create(scrapbook_title: "Demo day", scrapbook_description: "The future will certainly be bright after", user:user1, family:family1)

#Memories Seeds
#kim k
memory1 = Memory.create!(title:"The Code is right", description:"We hope our code was right, but sometimes coding is a b*tch. Yeah coding happens to good people. ",date:Date.new(2022,5,20), location:"Le Wagon, Lisboa",user:user1)
memory1.photo.attach(
  io: URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1654701386/Quilt/memories%20lewagon/jpeg/IMG_6689_yzbitn_s2i4lq.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
  )
  memory1.save!
memory2 = Memory.create(title:"The devilish smile", description:"Doing rails db:drop on Sy's laptop... Sorry Sy",date:Date.new(2022,06,01), location:"Le Wagon, Lisboa", user:user1)
file2 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1654706701/Quilt/memories%20lewagon/jpeg/220504_Le_Wagon_131-X3_sjllgq.jpg')
memory2.photo.attach(io: file2, filename: 'file2.jpg', content_type: 'image/jpg')
memory3 = Memory.create(title:"Ends", description:"Be careful with the ends kids. Even good things, like my code, have come to an end", date:Date.new(2022,04,22), location:"Le Wagon, Lisboa", user:user1)
photo9 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1654701384/Quilt/memories%20lewagon/jpeg/IMG_7008_dbqkoh_cvwibs.jpg')
memory3.photo.attach(io: photo9, filename: 'photo9.jpg', content_type: 'image/jpg')
memory4 = Memory.create(title:"Le Div", description:"In front-end the divs are the new ends...",date:Date.new(2022,05,10), location:"Le Wagon, Lisboa", user:user1)
photo10 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1654701383/Quilt/memories%20lewagon/jpeg/IMG_6675_r23cpa_gxjybi.jpg')
memory4.photo.attach(io: photo10, filename: 'photo10.jpg', content_type: 'image/jpg')
memory5 = Memory.create(title:"The Developer", description:"Now I have the look and the accessories(beer), but missing the code part.",date:Date.new(2022,06,07), location:"Le Wagon, Lisboa", user:user1)
photo11 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1654705849/Quilt/memories%20lewagon/jpeg/0c29b758-b4d9-41c0-b358-5fff4a39ab0a_ey07oh.jpg')
memory5.photo.attach(io: photo11, filename: 'photo11.jpg', content_type: 'image/jpg')
memory6 = Memory.create(title:"Hang in there Sayonara", description:"I feel your pain. My code is not working too.",date:Date.new(2022,05,30), location:"Le Wagon, Lisboa", user:user1)
photo12 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1654701384/Quilt/memories%20lewagon/jpeg/IMG_6672_pv07ja_dlalre.jpg')
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
