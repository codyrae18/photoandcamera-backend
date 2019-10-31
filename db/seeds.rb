# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# adding users
cody = User.create(name: "cody", username: "cody", password: "cody", description: "a photographer")
aj = User.create(name: "aj", username: "aj", password: "aj", description: "i like taking cars")

# adding photo
# photo1 = Photo.create(title: "car1", user_id: '1', photo: "THIS IS A PHOTO")

# adding camera
canon80d = Camera.create(name: "Canon 80d", user_id: '1')

# adding albums
me = Album.create(name: "me", user_id: "1")

# adding category
automotive = Category.create(name: "car", user_id: "1")

# adding follows
firstfollow = Follow.create(user_id_1: '1', user_id_2: "2")