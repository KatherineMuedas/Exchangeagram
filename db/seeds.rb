user = User.find_or_create_by!(email: "example@example.com") do |user|
 user.password= '12345678'
 user.password_confirmation= '12345678'
end
puts "created #{user.email}"
 
25.times do
  photo = open("http://placekitten.com/g/#{Random.rand(300..600)}/#{Random.rand(300..600)}")
  photo = user.pictures.create(title: 'Awesome Cat', description: 'Awesome Cat Description', photo: photo, category: 'Cat')
  puts "created cat photo for #{user.email}"
end
 
user = User.find_or_create_by!(email: "example2@example.com") do |user|
 user.password= '12345678'
 user.password_confirmation= '12345678'
end
 
puts "created #{user.email}"
25.times do
  photo = open("http://420placehold.it/meme/#{Random.rand(300..600)}-#{Random.rand(300..600)}")
  photo = user.pictures.create(title: 'Awesome Memes', description: 'Awesome Memes Description', photo: photo, category: 'Memes')
  puts "created meme photo for #{user.email}"
end
 
user = User.find_or_create_by!(email: "example3@example.com") do |user|
 user.password= '12345678'
 user.password_confirmation= '12345678'
end
puts "created #{user.email}"
 
25.times do
  photo = open("http://lorempixel.com/#{Random.rand(300..600)}/#{Random.rand(300..600)}/food/")
  photo = user.pictures.create(title: 'Awesome Food', description: 'Awesome Food Description', photo: photo, category: 'Food')
  puts "created food photo for #{user.email}"
end
