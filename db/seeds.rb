user = User.find_or_create_by!(email: "example@example.com") do |user|
 user.password= '12345678'
 user.password_confirmation= '12345678'
end
puts "created #{user.email}"
 
25.times do
  photo = open("http://placekitten.com/g/#{Random.rand(300..500)}/#{Random.rand(300..500)}")
  photo = user.pictures.create(title: 'Awesome Photo', description: 'Awesome Description', photo: photo, category: 'Cat')
  puts "created photo for #{user.email}"
end
 
user = User.find_or_create_by!(email: "example2@example.com") do |user|
 user.password= '12345678'
 user.password_confirmation= '12345678'
end
 
puts "created #{user.email}"
25.times do
  photo = open("http://placekitten.com/g/#{Random.rand(300..500)}/#{Random.rand(300..500)}")
  photo = user.pictures.create(title: 'Awesome Photo', description: 'Awesome Description', photo: photo, category: 'Cat')
  puts "created photo for #{user.email}"
end
