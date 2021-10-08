# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USER SEED DATA
# User.delete_all

# NUM_USERS = 50

(1..20).each do |id|
    User.create(
        id: id,
        name: Faker::Name.name,
        username: Faker::Internet.username,
        email: Faker::Internet.email,
        password_digest: Faker::Internet.password,
    )
    
end

# #GOALS DATA
# Goal.delete_all
arry = ['Active', 'Closed']
# NUM_GOALS = 50

(1..10).each do |id|
    Goal.create(
        user_id: id,
        goals: Faker::Lorem.sentence(word_count: 2, supplemental: true),
        status: arry.sample,
        notes: Faker::Lorem.sentence(word_count: 5, supplemental: true),
    )
end











