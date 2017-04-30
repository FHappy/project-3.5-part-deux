# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# RESET DB SEQUENCE SO OUR DB DOESNT KEEP FUCKING UP
ActiveRecord::Base.connection.reset_pk_sequence!('cities')
ActiveRecord::Base.connection.reset_pk_sequence!('posts')
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('bonds')


# seeded cities
City.delete_all
City.create(id: 1, name: 'Atlanta', country: 'United States of America', img_url:'http://i.imgur.com/mju1Kg8.jpg')
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
            current_city: 'Atlanta, GA',
            username: 'Garyaintnobitch'
            )
User.create(id: 2, 
            first_name: 'Geosh', 
            last_name: 'Kushner', 
            email: 'GaryUndJosh2Gether4Ever@hotmail.com', 
            password: 'garyschickenbreast', 
            password_confirmation: 'garyschickenbreast',
            img_url: "http://i.imgur.com/ZoNH7EY.jpg",
            bio: "Hey y'all, I'm Geosh. You might recognize me from MTV's The Real World: Las Vegas. I'm kind of a big deal.",
            current_city: 'Atlanta, GA',
            username: 'Trainingwheelsstillon'
            )
User.create(id: 3,
            first_name: 'Lima',
            last_name: 'Bean',
            email: 'itsLiamDamnt@gmail.com',
            password: 'default',
            password_confirmation: 'default',
            img_url: 'http://i.imgur.com/9f9gnRA.jpg',
            bio: "Hi everybody I'm Liam. I have a cool jacket and my dog has an underbite.
                  Don't forget to follow me!",
            current_city: 'Atlanta, GA',
            username: 'LimaBean694eva'
            )
User.create(id: 4,
            first_name: 'Tommy',
            last_name: 'The Pupper',
            email: 'GoodBoy@pups.org',
            password: 'borkbork',
            password_confirmation: 'borkbork',
            img_url: 'http://i.imgur.com/4ID8ez1.jpg',
            bio: "If you like bad boys, then unfollow immediately. Only good boys here.
                  Will bork for treats.",
            current_city: 'Atlanta, GA',
            username: 'MakeBorkNotHeck'
            )
User.create(id: 5,
            first_name: 'Brandi',
            last_name: 'Posey',
            email: 'DoomGurl26@aol.com',
            password: 'default',
            password_confirmation: 'default',
            img_url: 'http://i.imgur.com/PNPzn02.jpg',
            bio: "Hi, I'm Brandi. I love quickiemarts and swords. My friends like to joke that I'm a LITTLE CRAZY.
                  Follow me and check out all my posts!",
            current_city: 'New York, NY',
            username: 'DoomGenerationGirl'
            )
User.create(id: 6,
            first_name: 'Johnny',
            last_name: 'The Gorilla',
            email: 'RIPHarambe@hotmail.com',
            password: 'default',
            password_confirmation: 'default',
            img_url: 'http://i.imgur.com/eHVkPAZ.jpg',
            bio: "JOHNNY GOOD",
            current_city: 'Cincinatti, OH',
            username: 'GorillaboiJohnny'
            )
User.create(id: 7,
            first_name: 'Jane',
            last_name: 'Doe',
            email: 'Jesusismyhomegurl@blessed.com',
            password: 'default',
            password_confirmation: 'default',
            img_url: 'http://i.imgur.com/FdUuCe0.jpg',
            bio: "Hey everybody, I'm Jane. Come check out my posts and follow if you like.",
            current_city: 'San Francisco, CA',
            username: 'UnibrowJane'
            )

# seeded bonds
Bond.delete_all
Bond.create(id: 1, follower_id: 1, followed_id: 2)
Bond.create(id: 2, follower_id: 2, followed_id: 1)
Bond.create(id: 3, follower_id: 3, followed_id: 4)
Bond.create(id: 4, follower_id: 3, followed_id: 1)
Bond.create(id: 5, follower_id: 3, followed_id: 2)
Bond.create(id: 6, follower_id: 3, followed_id: 5)
Bond.create(id: 7, follower_id: 3, followed_id: 6)



