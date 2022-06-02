require 'open-uri'
require "byebug"

puts 'Destroy db of quiltmemory...'

Memory.destroy_all
UserFamily.destroy_all
Family.destroy_all
User.destroy_all


#User Seeds

user1 = User.create(email: "oliver@quiltmemory.com", password: "123456", first_name: "Oliver", last_name: "Adams", age: Date.new(1988,2,2))
user2 = User.create(email: "james@quiltmemory.com", password: "123456", first_name: "James", last_name: "Wilson", age: Date.new(1955,7,13))
user3 = User.create(email: "amelia@quiltmemory.com", password: "123456", first_name: "Amelia", last_name: "Harris", age: Date.new(1990,8,22))
user4 = User.create(email: "isabella@quiltmemory.com", password: "123456", first_name: "Isabella", last_name: "Payne", age: Date.new(1976,10,31))
user5 = User.create(email: "jessica@quiltmemory.com", password: "123456", first_name: "Jessica", last_name: "Chapman", age: Date.new(1984,12,12))
user6 = User.create(email: "sophie@quiltmemory.com", password: "123456", first_name: "Sophie", last_name: "Allen", age: Date.new(1968,5,10))

users_now = [user1, user2, user3, user4, user5, user6]

puts "Created #{users_now.count} new users"

#Families Seeds
family1 = Family.create(family_name:"Smiths" , description:"family1 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum nisi non sapien eleifend, eu semper diam lobortis. Curabitur molestie, nisi non cursus aliquam, tellus.", user:user1)
family2 = Family.create(family_name:"Jones" , description:"family2 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum nisi non sapien eleifend, eu semper diam lobortis. Curabitur molestie, nisi non cursus aliquam, tellus.", user:user2)
family3 = Family.create(family_name:"Williams" , description:"family3 - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum nisi non sapien eleifend, eu semper diam lobortis. Curabitur molestie, nisi non cursus aliquam, tellus.", user:user3)

#User Families
user1_family1 = UserFamily.create(user:user1, family:family1)
user2_family1 = UserFamily.create(user:user2, family:family1)
user1_family1 = UserFamily.create(user:user3, family:family2)
user2_family1 = UserFamily.create(user:user4, family:family2)
user1_family1 = UserFamily.create(user:user5, family:family3)
user2_family1 = UserFamily.create(user:user6, family:family3)



#Memories Seeds
memory1 = Memory.create!(title:"Promotion Department", description:"memory -1 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum nisi non sapien eleifend, eu semper diam lobortis. Curabitur molestie, nisi non cursus aliquam, tellus.",date:Date.new(2022,3,22), location:"Lisboa",user:user1)
memory2 = Memory.create(title:"Birthday", description:"memory -2 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum nisi non sapien eleifend, eu semper diam lobortis. Curabitur molestie, nisi non cursus aliquam, tellus.",date:Date.new(2022,5,15), location:"Madrid", user:user2)
memory3 = Memory.create(title:"Graduation", description:"memory -3 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum nisi non sapien eleifend, eu semper diam lobortis. Curabitur molestie, nisi non cursus aliquam, tellus.",date:Date.new(2022,7,22), location:"Paris", user:user3)
memory4 = Memory.create(title:"First Tree", description:"memory -4 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum nisi non sapien eleifend, eu semper diam lobortis. Curabitur molestie, nisi non cursus aliquam, tellus.",date:Date.new(2022,6,16), location:"Berlim", user:user4)
memory5 = Memory.create(title:"Honeymoon", description:"memory -5 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum nisi non sapien eleifend, eu semper diam lobortis. Curabitur molestie, nisi non cursus aliquam, tellus.",date:Date.new(2022,12,12), location:"Lisbon", user:user5)
memory6 = Memory.create(title:"Emancipation", description:"memory -6 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum nisi non sapien eleifend, eu semper diam lobortis. Curabitur molestie, nisi non cursus aliquam, tellus.",date:Date.new(2022,10,2), location:"Rome", user:user6)

photo1 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1653996493/Quilt/Seeds/Memories%20Photos/1_clpsed.jpg')
# memory1.photos.each do |photo|
#   photo.attach(io: photo1, filename: 'photo1.jpg', content_type: 'image/jpg')
# end

#memory1.photo.attach(io: photo1, filename: 'photo1.jpg', content_type: 'image/jpg')
#file = URI.open('https://kitt.lewagon.com/placeholder/users/arthur-littm')
#memory1.photo.attach(io: file, filename: 'arthur.jpeg', content_type: 'image/jpeg')
#memory1.save!

memory1.photo.attach(
  io: URI.open('https://i.pinimg.com/736x/5d/79/82/5d7982eda4896fe8fd1074b76498cfbd--unicorn-costume-unicorn-outfit.jpg'),
  filename: 'anyname.jpg', # use the extension of the attached file here (found at the end of the url)
  content_type: 'image/jpg' # use the mime type of the attached file here
  )


photo3 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1653996493/Quilt/Seeds/Memories%20Photos/3_mlg6fg.jpg')
memory3.photo.attach(io: photo3, filename: 'photo3.jpg', content_type: 'image/jpg')
photo4 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1653996493/Quilt/Seeds/Memories%20Photos/4_vd1gn1.jpg')
memory4.photo.attach(io: photo4, filename: 'photo4.jpg', content_type: 'image/jpg')
photo5 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1653996493/Quilt/Seeds/Memories%20Photos/5_z6h4ai.jpg')
memory5.photo.attach(io: photo5, filename: 'photo5.jpg', content_type: 'image/jpg')
photo6 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/v1653996493/Quilt/Seeds/Memories%20Photos/6_uz1faj.jpg')
memory6.photo.attach(io: photo6, filename: 'photo6.jpg', content_type: 'image/jpg')
