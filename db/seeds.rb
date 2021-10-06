# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USER SEED DATA
User.delete_all

NUM_USERS = 50

NUM_USERS.times do
    name = Faker::Name.name
    username = Faker::Internet.username
    email = Faker::Internet.email
    password_digest = Faker::Internet.password
    User.create(name: name, username: username, email: email, password_digest: password_digest)
end

#GOALS DATA










