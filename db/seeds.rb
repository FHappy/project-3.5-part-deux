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
User.create(id: 1, 
            first_name: 'Garold', 
            last_name: 'Kushner', 
            email: 'passnKush@aol.com', 
            password: 'mountaineerMondayz', 
            password_confirmation: 'mountaineerMondayz',
            img_url: "http://ipinionsyndicate.com/wp-content/uploads/2014/10/revenge-of-the-nerds-wwjustcomedycom.jpg",
            bio: "As a little boy, I always knew I loved to travel. It wasn't until I met my good friend and traveling partner Josh that my dream actualized.
                  I have a love for technology and travel! Please like my posts.",
            current_city: 'Atlanta, GA'
            )
User.create(id: 2, 
            first_name: 'Geosh', 
            last_name: 'Kushner', 
            email: 'GaryUndJosh2Gether4Ever@hotmail.com', 
            password: 'garyschickenbreast', 
            password_confirmation: 'garyschickenbreast',
            img_url: "http://i.imgur.com/ZoNH7EY.jpg",
            bio: "Hey y'all, I'm Josh. You might recognize me from MTV's The Real World: Las Vegas. I'm kind of a big deal.",
            current_city: 'Atlanta, GA'
            )



