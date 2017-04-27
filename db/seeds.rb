# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeded cities
City.delete_all
City.create(id: 1, name: 'Atlanta', country: 'United States of America')
City.create(id: 2, name: 'San Francisco', country: 'United States of America')
City.create(id: 3, name: 'London', country: 'United Kingdom')

#seeded posts
Post.delete_all
Post.create(id: 1, title: 'first', content: 'first Test post, yay', city_id: 1, user_id: 1)
Post.create(id: 2, title: 'second', content: 'second test post', city_id: 1, user_id: 1)
Post.create(id: 3, title: 'third', content: 'third test post', city_id: 1, user_id: 1)


# seeded users
User.delete_all
User.create(id: 1, first_name: 'Garold', last_name: 'Kushner', email: 'passnKush@aol.com', password: '2wives4eva', password_confirmation: '2wives4eva')
User.create(id: 2, first_name: 'Josh', last_name: 'Kushner', email: 'GaryUndJosh2Gether4Ever@hotmail.com', password: 'garyschickenbreast', password_confirmation: 'garyschickenbreast')



