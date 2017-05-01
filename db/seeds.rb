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
City.create(id: 2, name: 'San Francisco', country: 'United States of America', img_url: 'http://i.imgur.com/z7ZwJKx.jpg')
City.create(id: 3, name: 'London', country: 'United Kingdom', img_url: 'http://i.imgur.com/Buc18bN.jpg')

#seeded posts
Post.delete_all
Post.create(id: 1, title: 'Piedmont Park', content: 'Freak human out make funny noise mow mow mow mow mow mow success now attack human chew iPad power cord purr so leave fur on owners clothes or knock dish off table head butt cant eat out of my own dish. Cereal boxes make for five star accommodation ask for petting go into a room to decide you did not want to be in there anyway yet chew foot, yet scratch the box if it smells like fish eat as much as you wish. I am getting hungry. Cat not kitten around then cats take over the world and meow all night having their mate disturbing sleeping humans kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff or nap all day, or if it fits, i sits', city_id: 1, user_id: 1)
Post.create(id: 2, title: 'Little 5 Points', content: 'I like big cats and i can not lie sit by the fire yet meow for food, then when human fills food dish, take a few bites of food and continue meowing please stop looking at your phone and pet me, destroy the blinds give attitude. You call this cat food?', city_id: 1, user_id: 1)
Post.create(id: 3, title: 'Buckhead', content: 'Skate ipsum dolor sit amet, nosepicker hardware hang up steps alley oop freestyle. Death box bail mini ramp kidney Saran Wrap no comply Wheels of FIre. Tuna-flip crail grab Primo slide skate or die frigid air frontside. Coffin Steve Olson switch hard flip boneless disaster 900. Casper slide disaster nose grab deck fast plant camel back. Egg plant skate or die switch opposite footed 720 heel flip. Upland locals wall ride lien air bail hardware vert. Tuna-flip coping g-turn gap Transworld chicken wing freestyle. Roll-in indy grab rail slide 270 masonite kick-nose.', city_id: 1, user_id: 1)
Post.create(id: 4, title: 'Dinner is on me', content: 'Goat cream cheese cheese and biscuits. Cheese triangles ricotta cream cheese cow halloumi red leicester pepper jack feta. Camembert de normandie boursin edam st. agur blue cheese caerphilly danish fontina cheese and biscuits taleggio. Caerphilly stinking bishop hard cheese cottage cheese blue castello cheesecake stilton red leicester. Goat parmesan pecorino airedale.', city_id: 1, user_id: 2)
Post.create(id: 5, title: 'Pool day', content: 'No comply alley oop roll-in death box. Kevin Harris hanger griptape front foot impossible. Trucks nose slide frontside air manual. Boardslide hang ten snake 540. Bone air rail masonite ho-ho Bare Cover. Axle nosegrind pivot hardware. Rail slam sketchy slob air. Grind helipop Rob Welsh heel flip pool. Johnny Rad 270 slappy shinner ollie. Kickturn g-turn coping rail slide.', city_id: 1, user_id: 3)
Post.create(id: 6, title: 'Just hanging around', content: 'Curl into a furry donut lick sellotape, caticus cuteicus yet give attitude, or demand to be let outside at once, and expect owner to wait for me as i think about it. Massacre a bird in the living room and then look like the cutest and most innocent animal on the planet inspect anything brought into the house. Lie on your belly and purr when you are asleep. Pelt around the house and up and down stairs chasing phantoms always hungry. Pounce on unsuspecting person. Human give me attention meow.', city_id: 1, user_id: 4)
Post.create(id: 7, title: 'Playoffs?!', content: 'Squirty cheese bocconcini cheesy grin. Chalk and cheese smelly cheese halloumi jarlsberg halloumi cheese triangles the big cheese ricotta. Cheesy grin paneer fromage frais gouda cottage cheese blue castello caerphilly cheese triangles. Chalk and cheese.', city_id: 1, user_id: 5)
Post.create(id: 8, title: 'Trolley rides', content: 'Chet Thomas nose-bump opposite footed pop shove-it tail hang up. Fakie coping dude yeah coffin. Poseur bone air transfer Upland melancholy kick-nose. Sketchy mute-air mongo tailslide bearings. Baseplate hard flip Christ air trucks hip Kevin Ancell. Invert Steve Caballero judo air griptape frontside air crailtap. Hard flip soul skate nose blunt shinner betty. Durometer Jeff Phillips kickflip risers bearings 360. Coper flail hip Tracker fakie. Steve Steadham kickturn crail grab aerial no comply tuna-flip.', city_id: 2, user_id: 6)
Post.create(id: 9, title: 'Bikes!', content: 'Flannel freegan VHS unicorn food truck. Gentrify vice VHS, fap la croix green juice man braid vinyl tilde kitsch. Woke waistcoat copper mug, pop-up tattooed beard schlitz chillwave bespoke polaroid vexillologist listicle. Copper mug keffiyeh pinterest, tattooed pabst asymmetrical meditation shoreditch. La croix tattooed tote bag, swag direct trade tilde squid small batch roof party schlitz master cleanse dreamcatcher waistcoat.', city_id: 2, user_id: 7)
Post.create(id: 10, title: 'Family reunion', content: 'Skate ipsum dolor sit amet, nose bail freestyle 720 axle manual. Finger flip Japan air tuna-flip half-cab dude tic-tac. Pool fakie out Z-Roller nosepicker risers soul skate slob air. Cab flip axle coping transfer 720 launch ramp. Ollie bank pop shove-it half-cab Mike Vallely wall ride nose blunt. Camel back pivot method air darkslide grind crailtap. Bank handplant blunt frigid air face plant slam. Wax slide hard flip Kevin Harris ollie hole pool. Nose slide full-cab rock and roll coffin durometer pivot.', city_id: 3, user_id: 8)
Post.create(id: 11, title: 'Rise Up', content: 'Sustainable godard XOXO, kinfolk williamsburg cardigan leggings ethical schlitz vegan YOLO flexitarian banjo vaporware normcore. Tilde flannel retro quinoa knausgaard, blue bottle chicharrones jean shorts mustache vexillologist heirloom chartreuse. Echo park yuccie hella fingers', city_id: 1, user_id: 9)
Post.create(id: 12, title: 'Alcatraz', content: 'Marfa snackwave air plant subway tile vice messenger bag enamel pin humblebrag direct trade. Hell of wayfarers live-edge, locavore polaroid cronut sustainable. Four loko flexitarian kale chips tumblr locavore. Raclette bespoke locavore, chicharrones chartreuse lumbersexual tumeric tacos gluten-free poutine hexagon enamel pin jianbing. Church-key flexitarian YOLO bicycle rights small batch neutra. Chillwave vaporware keffiyeh raw denim. Offal brooklyn subway tile, etsy shoreditch ennui whatever.', city_id: 3, user_id: 10)
Post.create(id: 13, title: 'Vacation Getaway', content: 'Freak human out make funny noise mow mow mow mow mow mow success now attack human chew iPad power cord purr so leave fur on owners clothes or knock dish off table head butt cant eat out of my own dish. Cereal boxes make for five star accommodation ask for petting go into a room to decide you did not want to be in there anyway yet chew foot, yet scratch the box if it smells like fish eat as much as you wish. I am getting hungry. Cat not kitten around then cats take over the world and meow all night having their mate disturbing sleeping humans kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff or nap all day, or if it fits, i sits', city_id: 1, user_id: 1)
Post.create(id: 14, title: 'Gone Fishing', content: 'I like big cats and i can not lie sit by the fire yet meow for food, then when human fills food dish, take a few bites of food and continue meowing please stop looking at your phone and pet me, destroy the blinds give attitude. You call this cat food?', city_id: 1, user_id: 1)
Post.create(id: 15, title: 'Rainy Day', content: 'No comply alley oop roll-in death box. Kevin Harris hanger griptape front foot impossible. Trucks nose slide frontside air manual. Boardslide hang ten snake 540. Bone air rail masonite ho-ho Bare Cover. Axle nosegrind pivot hardware. Rail slam sketchy slob air. Grind helipop Rob Welsh heel flip pool. Johnny Rad 270 slappy shinner ollie. Kickturn g-turn coping rail slide.', city_id: 1, user_id: 1)
Post.create(id: 16, title: 'Night out dancing', content: 'No comply alley oop roll-in death box. Kevin Harris hanger griptape front foot impossible. Trucks nose slide frontside air manual. Boardslide hang ten snake 540. Bone air rail masonite ho-ho Bare Cover. Axle nosegrind pivot hardware. Rail slam sketchy slob air. Grind helipop Rob Welsh heel flip pool. Johnny Rad 270 slappy shinner ollie. Kickturn g-turn coping rail slide.', city_id: 1, user_id: 2)
Post.create(id: 17, title: 'Should have brought a jacket', content: 'Sustainable godard XOXO, kinfolk williamsburg cardigan leggings ethical schlitz vegan YOLO flexitarian banjo vaporware normcore. Tilde flannel retro quinoa knausgaard, blue bottle chicharrones jean shorts mustache vexillologist heirloom chartreuse. Echo park yuccie hella fingers', city_id: 1, user_id: 3)
Post.create(id: 18, title: 'Great Coffee', content: 'Flannel freegan VHS unicorn food truck. Gentrify vice VHS, fap la croix green juice man braid vinyl tilde kitsch. Woke waistcoat copper mug, pop-up tattooed beard schlitz chillwave bespoke polaroid vexillologist listicle. Copper mug keffiyeh pinterest, tattooed pabst asymmetrical meditation shoreditch. La croix tattooed tote bag, swag direct trade tilde squid small batch roof party schlitz master cleanse dreamcatcher waistcoat.', city_id: 1, user_id: 4)
Post.create(id: 19, title: 'Great place to read a book', content: 'Squirty cheese bocconcini cheesy grin. Chalk and cheese smelly cheese halloumi jarlsberg halloumi cheese triangles the big cheese ricotta. Cheesy grin paneer fromage frais gouda cottage cheese blue castello caerphilly cheese triangles. Chalk and cheese.', city_id: 1, user_id: 5)
Post.create(id: 20, title: 'High school reunion', content: 'Chet Thomas nose-bump opposite footed pop shove-it tail hang up. Fakie coping dude yeah coffin. Poseur bone air transfer Upland melancholy kick-nose. Sketchy mute-air mongo tailslide bearings. Baseplate hard flip Christ air trucks hip Kevin Ancell. Invert Steve Caballero judo air griptape frontside air crailtap. Hard flip soul skate nose blunt shinner betty. Durometer Jeff Phillips kickflip risers bearings 360. Coper flail hip Tracker fakie. Steve Steadham kickturn crail grab aerial no comply tuna-flip.', city_id: 2, user_id: 6)
Post.create(id: 21, title: 'Uber tour', content: 'Sustainable godard XOXO, kinfolk williamsburg cardigan leggings ethical schlitz vegan YOLO flexitarian banjo vaporware normcore. Tilde flannel retro quinoa knausgaard, blue bottle chicharrones jean shorts mustache vexillologist heirloom chartreuse. Echo park yuccie hella fingers', city_id: 2, user_id: 7)
Post.create(id: 22, title: 'Braves Game', content: 'Skate ipsum dolor sit amet, nose bail freestyle 720 axle manual. Finger flip Japan air tuna-flip half-cab dude tic-tac. Pool fakie out Z-Roller nosepicker risers soul skate slob air. Cab flip axle coping transfer 720 launch ramp. Ollie bank pop shove-it half-cab Mike Vallely wall ride nose blunt. Camel back pivot method air darkslide grind crailtap. Bank handplant blunt frigid air face plant slam. Wax slide hard flip Kevin Harris ollie hole pool. Nose slide full-cab rock and roll coffin durometer pivot.', city_id: 3, user_id: 8)
Post.create(id: 23, title: 'They have a basketball team?', content: 'Direct trade kogi polaroid, stumptown seitan skateboard green juice fixie. Lomo wayfarers jean shorts, art party drinking vinegar vice truffaut chartreuse hashtag taxidermy meditation kombucha austin semiotics meggings. Cronut bespoke slow-carb gastropub, flannel truffaut williamsburg. Tofu actually, flexitarian fanny pack enamel pin you probably have not heard of them schlitz kale chips hexagon aesthetic fashion axe.', city_id: 1, user_id: 9)
Post.create(id: 24, title: 'Hiking tour', content: 'Sustainable godard XOXO, kinfolk williamsburg cardigan leggings ethical schlitz vegan YOLO flexitarian banjo vaporware normcore. Tilde flannel retro quinoa knausgaard, blue bottle chicharrones jean shorts mustache vexillologist heirloom chartreuse. Echo park yuccie hella fingers', city_id: 2, user_id: 10)
Post.create(id: 25, title: 'Night out with the family', content: 'Freak human out make funny noise mow mow mow mow mow mow success now attack human chew iPad power cord purr so leave fur on owners clothes or knock dish off table head butt cant eat out of my own dish. Cereal boxes make for five star accommodation ask for petting go into a room to decide you did not want to be in there anyway yet chew foot, yet scratch the box if it smells like fish eat as much as you wish. I am getting hungry. Cat not kitten around then cats take over the world and meow all night having their mate disturbing sleeping humans kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff or nap all day, or if it fits, i sits', city_id: 1, user_id: 1)
Post.create(id: 26, title: 'Birthday dinner', content: 'I like big cats and i can not lie sit by the fire yet meow for food, then when human fills food dish, take a few bites of food and continue meowing please stop looking at your phone and pet me, destroy the blinds give attitude. You call this cat food?', city_id: 1, user_id: 1)
Post.create(id: 27, title: 'Ice cream anyone?', content: 'Skate ipsum dolor sit amet, nosepicker hardware hang up steps alley oop freestyle. Death box bail mini ramp kidney Saran Wrap no comply Wheels of FIre. Tuna-flip crail grab Primo slide skate or die frigid air frontside. Coffin Steve Olson switch hard flip boneless disaster 900. Casper slide disaster nose grab deck fast plant camel back. Egg plant skate or die switch opposite footed 720 heel flip. Upland locals wall ride lien air bail hardware vert. Tuna-flip coping g-turn gap Transworld chicken wing freestyle. Roll-in indy grab rail slide 270 masonite kick-nose.', city_id: 1, user_id: 1)
Post.create(id: 28, title: 'Best waffles in town', content: 'Goat cream cheese cheese and biscuits. Cheese triangles ricotta cream cheese cow halloumi red leicester pepper jack feta. Camembert de normandie boursin edam st. agur blue cheese caerphilly danish fontina cheese and biscuits taleggio. Caerphilly stinking bishop hard cheese cottage cheese blue castello cheesecake stilton red leicester. Goat parmesan pecorino airedale.', city_id: 1, user_id: 2)
Post.create(id: 29, title: 'Great day for a walk aroudn town', content: 'No comply alley oop roll-in death box. Kevin Harris hanger griptape front foot impossible. Trucks nose slide frontside air manual. Boardslide hang ten snake 540. Bone air rail masonite ho-ho Bare Cover. Axle nosegrind pivot hardware. Rail slam sketchy slob air. Grind helipop Rob Welsh heel flip pool. Johnny Rad 270 slappy shinner ollie. Kickturn g-turn coping rail slide.', city_id: 1, user_id: 3)
Post.create(id: 30, title: 'Outdoor movie night', content: 'Curl into a furry donut lick sellotape, caticus cuteicus yet give attitude, or demand to be let outside at once, and expect owner to wait for me as i think about it. Massacre a bird in the living room and then look like the cutest and most innocent animal on the planet inspect anything brought into the house. Lie on your belly and purr when you are asleep. Pelt around the house and up and down stairs chasing phantoms always hungry. Pounce on unsuspecting person. Human give me attention meow.', city_id: 1, user_id: 4)
Post.create(id: 31, title: 'Topgolf', content: 'Squirty cheese bocconcini cheesy grin. Chalk and cheese smelly cheese halloumi jarlsberg halloumi cheese triangles the big cheese ricotta. Cheesy grin paneer fromage frais gouda cottage cheese blue castello caerphilly cheese triangles. Chalk and cheese.', city_id: 1, user_id: 5)
Post.create(id: 32, title: 'The circus is in town!', content: 'Chet Thomas nose-bump opposite footed pop shove-it tail hang up. Fakie coping dude yeah coffin. Poseur bone air transfer Upland melancholy kick-nose. Sketchy mute-air mongo tailslide bearings. Baseplate hard flip Christ air trucks hip Kevin Ancell. Invert Steve Caballero judo air griptape frontside air crailtap. Hard flip soul skate nose blunt shinner betty. Durometer Jeff Phillips kickflip risers bearings 360. Coper flail hip Tracker fakie. Steve Steadham kickturn crail grab aerial no comply tuna-flip.', city_id: 2, user_id: 6)
Post.create(id: 33, title: 'Stroll through the park', content: 'Flannel freegan VHS unicorn food truck. Gentrify vice VHS, fap la croix green juice man braid vinyl tilde kitsch. Woke waistcoat copper mug, pop-up tattooed beard schlitz chillwave bespoke polaroid vexillologist listicle. Copper mug keffiyeh pinterest, tattooed pabst asymmetrical meditation shoreditch. La croix tattooed tote bag, swag direct trade tilde squid small batch roof party schlitz master cleanse dreamcatcher waistcoat.', city_id: 2, user_id: 7)
Post.create(id: 34, title:  'Taco tuesday', content: 'Skate ipsum dolor sit amet, nose bail freestyle 720 axle manual. Finger flip Japan air tuna-flip half-cab dude tic-tac. Pool fakie out Z-Roller nosepicker risers soul skate slob air. Cab flip axle coping transfer 720 launch ramp. Ollie bank pop shove-it half-cab Mike Vallely wall ride nose blunt. Camel back pivot method air darkslide grind crailtap. Bank handplant blunt frigid air face plant slam. Wax slide hard flip Kevin Harris ollie hole pool. Nose slide full-cab rock and roll coffin durometer pivot.', city_id: 3, user_id: 8)
Post.create(id: 35, title: 'Night on the town', content: 'Sustainable godard XOXO, kinfolk williamsburg cardigan leggings ethical schlitz vegan YOLO flexitarian banjo vaporware normcore. Tilde flannel retro quinoa knausgaard, blue bottle chicharrones jean shorts mustache vexillologist heirloom chartreuse. Echo park yuccie hella fingers', city_id: 1, user_id: 9)
Post.create(id: 36, title: 'Best pizza around', content: 'Marfa snackwave air plant subway tile vice messenger bag enamel pin humblebrag direct trade. Hell of wayfarers live-edge, locavore polaroid cronut sustainable. Four loko flexitarian kale chips tumblr locavore. Raclette bespoke locavore, chicharrones chartreuse lumbersexual tumeric tacos gluten-free poutine hexagon enamel pin jianbing. Church-key flexitarian YOLO bicycle rights small batch neutra. Chillwave vaporware keffiyeh raw denim. Offal brooklyn subway tile, etsy shoreditch ennui whatever.', city_id: 3, user_id: 10)
Post.create(id: 37, title: 'Time for a run', content: 'Freak human out make funny noise mow mow mow mow mow mow success now attack human chew iPad power cord purr so leave fur on owners clothes or knock dish off table head butt cant eat out of my own dish. Cereal boxes make for five star accommodation ask for petting go into a room to decide you did not want to be in there anyway yet chew foot, yet scratch the box if it smells like fish eat as much as you wish. I am getting hungry. Cat not kitten around then cats take over the world and meow all night having their mate disturbing sleeping humans kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff or nap all day, or if it fits, i sits', city_id: 1, user_id: 1)
Post.create(id: 38, title: 'Shopping day', content: 'I like big cats and i can not lie sit by the fire yet meow for food, then when human fills food dish, take a few bites of food and continue meowing please stop looking at your phone and pet me, destroy the blinds give attitude. You call this cat food?', city_id: 1, user_id: 1)
Post.create(id: 39, title: 'Brunch', content: 'Skate ipsum dolor sit amet, nosepicker hardware hang up steps alley oop freestyle. Death box bail mini ramp kidney Saran Wrap no comply Wheels of FIre. Tuna-flip crail grab Primo slide skate or die frigid air frontside. Coffin Steve Olson switch hard flip boneless disaster 900. Casper slide disaster nose grab deck fast plant camel back. Egg plant skate or die switch opposite footed 720 heel flip. Upland locals wall ride lien air bail hardware vert. Tuna-flip coping g-turn gap Transworld chicken wing freestyle. Roll-in indy grab rail slide 270 masonite kick-nose.', city_id: 2, user_id: 1)
Post.create(id: 40, title: 'Flea Market', content: 'Goat cream cheese cheese and biscuits. Cheese triangles ricotta cream cheese cow halloumi red leicester pepper jack feta. Camembert de normandie boursin edam st. agur blue cheese caerphilly danish fontina cheese and biscuits taleggio. Caerphilly stinking bishop hard cheese cottage cheese blue castello cheesecake stilton red leicester. Goat parmesan pecorino airedale.', city_id: 1, user_id: 2)
Post.create(id: 41, title: 'Jazz festival', content: 'No comply alley oop roll-in death box. Kevin Harris hanger griptape front foot impossible. Trucks nose slide frontside air manual. Boardslide hang ten snake 540. Bone air rail masonite ho-ho Bare Cover. Axle nosegrind pivot hardware. Rail slam sketchy slob air. Grind helipop Rob Welsh heel flip pool. Johnny Rad 270 slappy shinner ollie. Kickturn g-turn coping rail slide.', city_id: 1, user_id: 3)
Post.create(id: 42, title: 'Food truck friday', content: 'Curl into a furry donut lick sellotape, caticus cuteicus yet give attitude, or demand to be let outside at once, and expect owner to wait for me as i think about it. Massacre a bird in the living room and then look like the cutest and most innocent animal on the planet inspect anything brought into the house. Lie on your belly and purr when you are asleep. Pelt around the house and up and down stairs chasing phantoms always hungry. Pounce on unsuspecting person. Human give me attention meow.', city_id: 2, user_id: 3)
Post.create(id: 43, title: 'Late night munchies', content: 'Squirty cheese bocconcini cheesy grin. Chalk and cheese smelly cheese halloumi jarlsberg halloumi cheese triangles the big cheese ricotta. Cheesy grin paneer fromage frais gouda cottage cheese blue castello caerphilly cheese triangles. Chalk and cheese.', city_id: 1, user_id: 5)
Post.create(id: 44, title: 'Dumplings and Beer', content: 'Chet Thomas nose-bump opposite footed pop shove-it tail hang up. Fakie coping dude yeah coffin. Poseur bone air transfer Upland melancholy kick-nose. Sketchy mute-air mongo tailslide bearings. Baseplate hard flip Christ air trucks hip Kevin Ancell. Invert Steve Caballero judo air griptape frontside air crailtap. Hard flip soul skate nose blunt shinner betty. Durometer Jeff Phillips kickflip risers bearings 360. Coper flail hip Tracker fakie. Steve Steadham kickturn crail grab aerial no comply tuna-flip.', city_id: 2, user_id: 5)
Post.create(id: 45, title: 'Beltline Biking', content: 'Flannel freegan VHS unicorn food truck. Gentrify vice VHS, fap la croix green juice man braid vinyl tilde kitsch. Woke waistcoat copper mug, pop-up tattooed beard schlitz chillwave bespoke polaroid vexillologist listicle. Copper mug keffiyeh pinterest, tattooed pabst asymmetrical meditation shoreditch. La croix tattooed tote bag, swag direct trade tilde squid small batch roof party schlitz master cleanse dreamcatcher waistcoat.', city_id: 1, user_id: 7)
Post.create(id: 46, title: 'London Bridge', content: 'Skate ipsum dolor sit amet, nose bail freestyle 720 axle manual. Finger flip Japan air tuna-flip half-cab dude tic-tac. Pool fakie out Z-Roller nosepicker risers soul skate slob air. Cab flip axle coping transfer 720 launch ramp. Ollie bank pop shove-it half-cab Mike Vallely wall ride nose blunt. Camel back pivot method air darkslide grind crailtap. Bank handplant blunt frigid air face plant slam. Wax slide hard flip Kevin Harris ollie hole pool. Nose slide full-cab rock and roll coffin durometer pivot.', city_id: 3, user_id: 10)
Post.create(id: 47, title: 'Ponce City Market', content: 'Sustainable godard XOXO, kinfolk williamsburg cardigan leggings ethical schlitz vegan YOLO flexitarian banjo vaporware normcore. Tilde flannel retro quinoa knausgaard, blue bottle chicharrones jean shorts mustache vexillologist heirloom chartreuse. Echo park yuccie hella fingers', city_id: 1, user_id: 9)
Post.create(id: 48, title: 'When did we get ice cream?', content: 'Marfa snackwave air plant subway tile vice messenger bag enamel pin humblebrag direct trade. Hell of wayfarers live-edge, locavore polaroid cronut sustainable. Four loko flexitarian kale chips tumblr locavore. Raclette bespoke locavore, chicharrones chartreuse lumbersexual tumeric tacos gluten-free poutine hexagon enamel pin jianbing. Church-key flexitarian YOLO bicycle rights small batch neutra. Chillwave vaporware keffiyeh raw denim. Offal brooklyn subway tile, etsy shoreditch ennui whatever.', city_id: 1, user_id: 10)
Post.create(id: 49, title: 'Donuts', content: 'Freak human out make funny noise mow mow mow mow mow mow success now attack human chew iPad power cord purr so leave fur on owners clothes or knock dish off table head butt cant eat out of my own dish. Cereal boxes make for five star accommodation ask for petting go into a room to decide you did not want to be in there anyway yet chew foot, yet scratch the box if it smells like fish eat as much as you wish. I am getting hungry. Cat not kitten around then cats take over the world and meow all night having their mate disturbing sleeping humans kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff or nap all day, or if it fits, i sits', city_id: 2, user_id: 8)
Post.create(id: 50, title: 'Cookout', content: 'I like big cats and i can not lie sit by the fire yet meow for food, then when human fills food dish, take a few bites of food and continue meowing please stop looking at your phone and pet me, destroy the blinds give attitude. You call this cat food?', city_id: 1, user_id: 4)
Post.create(id: 51, title: 'Early morning bike ride', content: 'Skate ipsum dolor sit amet, nosepicker hardware hang up steps alley oop freestyle. Death box bail mini ramp kidney Saran Wrap no comply Wheels of FIre. Tuna-flip crail grab Primo slide skate or die frigid air frontside. Coffin Steve Olson switch hard flip boneless disaster 900. Casper slide disaster nose grab deck fast plant camel back. Egg plant skate or die switch opposite footed 720 heel flip. Upland locals wall ride lien air bail hardware vert. Tuna-flip coping g-turn gap Transworld chicken wing freestyle. Roll-in indy grab rail slide 270 masonite kick-nose.', city_id: 2, user_id: 5)
Post.create(id: 52, title: 'Best bargin in town', content: 'Goat cream cheese cheese and biscuits. Cheese triangles ricotta cream cheese cow halloumi red leicester pepper jack feta. Camembert de normandie boursin edam st. agur blue cheese caerphilly danish fontina cheese and biscuits taleggio. Caerphilly stinking bishop hard cheese cottage cheese blue castello cheesecake stilton red leicester. Goat parmesan pecorino airedale.', city_id: 3, user_id: 5)
Post.create(id: 53, title: 'Out on the town', content: 'No comply alley oop roll-in death box. Kevin Harris hanger griptape front foot impossible. Trucks nose slide frontside air manual. Boardslide hang ten snake 540. Bone air rail masonite ho-ho Bare Cover. Axle nosegrind pivot hardware. Rail slam sketchy slob air. Grind helipop Rob Welsh heel flip pool. Johnny Rad 270 slappy shinner ollie. Kickturn g-turn coping rail slide.', city_id: 2, user_id: 1)
Post.create(id: 54, title: 'Best weekend ever!', content: 'Curl into a furry donut lick sellotape, caticus cuteicus yet give attitude, or demand to be let outside at once, and expect owner to wait for me as i think about it. Massacre a bird in the living room and then look like the cutest and most innocent animal on the planet inspect anything brought into the house. Lie on your belly and purr when you are asleep. Pelt around the house and up and down stairs chasing phantoms always hungry. Pounce on unsuspecting person. Human give me attention meow.', city_id: 1, user_id: 2)
Post.create(id: 55, title: 'Anniversary Getaway', content: 'Squirty cheese bocconcini cheesy grin. Chalk and cheese smelly cheese halloumi jarlsberg halloumi cheese triangles the big cheese ricotta. Cheesy grin paneer fromage frais gouda cottage cheese blue castello caerphilly cheese triangles. Chalk and cheese.', city_id: 2, user_id: 6)
Post.create(id: 56, title: 'Breakfast of champions', content: 'Chet Thomas nose-bump opposite footed pop shove-it tail hang up. Fakie coping dude yeah coffin. Poseur bone air transfer Upland melancholy kick-nose. Sketchy mute-air mongo tailslide bearings. Baseplate hard flip Christ air trucks hip Kevin Ancell. Invert Steve Caballero judo air griptape frontside air crailtap. Hard flip soul skate nose blunt shinner betty. Durometer Jeff Phillips kickflip risers bearings 360. Coper flail hip Tracker fakie. Steve Steadham kickturn crail grab aerial no comply tuna-flip.', city_id: 2, user_id: 3)
Post.create(id: 57, title: 'I do not want to go home', content: 'Flannel freegan VHS unicorn food truck. Gentrify vice VHS, fap la croix green juice man braid vinyl tilde kitsch. Woke waistcoat copper mug, pop-up tattooed beard schlitz chillwave bespoke polaroid vexillologist listicle. Copper mug keffiyeh pinterest, tattooed pabst asymmetrical meditation shoreditch. La croix tattooed tote bag, swag direct trade tilde squid small batch roof party schlitz master cleanse dreamcatcher waistcoat.', city_id: 2, user_id: 6)
Post.create(id: 58, title: 'Just moved in', content: 'Skate ipsum dolor sit amet, nose bail freestyle 720 axle manual. Finger flip Japan air tuna-flip half-cab dude tic-tac. Pool fakie out Z-Roller nosepicker risers soul skate slob air. Cab flip axle coping transfer 720 launch ramp. Ollie bank pop shove-it half-cab Mike Vallely wall ride nose blunt. Camel back pivot method air darkslide grind crailtap. Bank handplant blunt frigid air face plant slam. Wax slide hard flip Kevin Harris ollie hole pool. Nose slide full-cab rock and roll coffin durometer pivot.', city_id: 3, user_id: 4)
Post.create(id: 59, title: 'What time does this place close?', content: 'Sustainable godard XOXO, kinfolk williamsburg cardigan leggings ethical schlitz vegan YOLO flexitarian banjo vaporware normcore. Tilde flannel retro quinoa knausgaard, blue bottle chicharrones jean shorts mustache vexillologist heirloom chartreuse. Echo park yuccie hella fingers', city_id: 3, user_id: 1)
Post.create(id: 60, title: 'Best fries around', content: 'Marfa snackwave air plant subway tile vice messenger bag enamel pin humblebrag direct trade. Hell of wayfarers live-edge, locavore polaroid cronut sustainable. Four loko flexitarian kale chips tumblr locavore. Raclette bespoke locavore, chicharrones chartreuse lumbersexual tumeric tacos gluten-free poutine hexagon enamel pin jianbing. Church-key flexitarian YOLO bicycle rights small batch neutra. Chillwave vaporware keffiyeh raw denim. Offal brooklyn subway tile, etsy shoreditch ennui whatever.', city_id: 3, user_id: 7)

#post creation date
Post.first.update(created_at: Time.utc(2017, 4, 27, 8, 30))
Post.second.update(created_at: Time.utc(2017, 4, 16, 10, 30))
Post.third.update(created_at: Time.utc(2017, 4, 23, 12, 25))
Post.find(4).update(created_at: Time.utc(2017, 4, 13, 10, 20))
Post.find(5).update(created_at: Time.utc(2017, 4, 15, 11, 58))
Post.find(6).update(created_at: Time.utc(2017, 4, 16, 9, 27))
Post.find(7).update(created_at: Time.utc(2017, 4, 29, 8, 14))
Post.find(8).update(created_at: Time.utc(2017, 4, 26, 9, 16))
Post.find(9).update(created_at: Time.utc(2017, 4, 20, 10, 36))
Post.find(10).update(created_at: Time.utc(2017, 4, 10, 9, 26))
Post.find(11).update(created_at: Time.utc(2017, 4, 18, 12, 25))
Post.find(12).update(created_at: Time.utc(2017, 4, 22, 14, 39))
Post.find(13).update(created_at: Time.utc(2017, 4, 25, 15, 23))
Post.find(14).update(created_at: Time.utc(2017, 4, 19, 14, 41))
Post.find(15).update(created_at: Time.utc(2017, 4, 15, 18, 57))
Post.find(16).update(created_at: Time.utc(2017, 4, 10, 19, 52))
Post.find(17).update(created_at: Time.utc(2017, 4, 28, 13, 56))
Post.find(18).update(created_at: Time.utc(2017, 4, 29, 16, 50))
Post.find(19).update(created_at: Time.utc(2017, 4, 30, 20, 29))
Post.find(20).update(created_at: Time.utc(2017, 4, 17, 22, 38))
Post.find(21).update(created_at: Time.utc(2017, 4, 15, 16, 25))
Post.find(22).update(created_at: Time.utc(2017, 4, 22, 18, 23))
Post.find(23).update(created_at: Time.utc(2017, 4, 16, 19, 17))
Post.find(24).update(created_at: Time.utc(2017, 4, 15, 20, 14))
Post.find(25).update(created_at: Time.utc(2017, 4, 14, 22, 16))
Post.find(26).update(created_at: Time.utc(2017, 4, 13, 23, 58))
Post.find(27).update(created_at: Time.utc(2017, 4, 18, 12, 17))
Post.find(28).update(created_at: Time.utc(2017, 4, 10, 15, 27))
Post.find(29).update(created_at: Time.utc(2017, 4, 11, 20, 15))
Post.find(30).update(created_at: Time.utc(2017, 4, 23, 22, 37))
Post.find(31).update(created_at: Time.utc(2017, 4, 26, 18, 27))
Post.find(32).update(created_at: Time.utc(2017, 4, 18, 17, 19))
Post.find(33).update(created_at: Time.utc(2017, 4, 19, 21, 18))
Post.find(34).update(created_at: Time.utc(2017, 4, 20, 14, 12))
Post.find(35).update(created_at: Time.utc(2017, 4, 18, 16, 19))
Post.find(36).update(created_at: Time.utc(2017, 4, 16, 13, 15))
Post.find(37).update(created_at: Time.utc(2017, 4, 20, 16, 17))
Post.find(38).update(created_at: Time.utc(2017, 4, 13, 17, 16))
Post.find(39).update(created_at: Time.utc(2017, 4, 12, 19, 25))
Post.find(40).update(created_at: Time.utc(2017, 4, 11, 10, 46))
Post.find(41).update(created_at: Time.utc(2017, 4, 9, 11, 19))
Post.find(42).update(created_at: Time.utc(2017, 4, 8, 14, 28))
Post.find(43).update(created_at: Time.utc(2017, 4, 6, 15, 48))
Post.find(44).update(created_at: Time.utc(2017, 4, 4, 17, 47))
Post.find(45).update(created_at: Time.utc(2017, 4, 3, 12, 23))
Post.find(46).update(created_at: Time.utc(2017, 4, 14, 14, 54))
Post.find(47).update(created_at: Time.utc(2017, 4, 23, 8, 24))
Post.find(48).update(created_at: Time.utc(2017, 4, 26, 7, 22))
Post.find(49).update(created_at: Time.utc(2017, 4, 29, 8, 23))
Post.find(50).update(created_at: Time.utc(2017, 4, 18, 22, 46))
Post.find(51).update(created_at: Time.utc(2017, 4, 17, 10, 34))
Post.find(52).update(created_at: Time.utc(2017, 4, 29, 9, 30))
Post.find(53).update(created_at: Time.utc(2017, 4, 27, 7, 48))
Post.find(54).update(created_at: Time.utc(2017, 4, 26, 10, 45))
Post.find(55).update(created_at: Time.utc(2017, 4, 23, 14, 46))
Post.find(56).update(created_at: Time.utc(2017, 4, 11, 16, 15))
Post.find(57).update(created_at: Time.utc(2017, 4, 12, 15, 20))
Post.find(58).update(created_at: Time.utc(2017, 4, 10, 20, 25))
Post.find(59).update(created_at: Time.utc(2017, 4, 9, 17, 38))
Post.find(60).update(created_at: Time.utc(2017, 4, 14, 8, 18))




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
            current_city: 'Tokyo, Japan',
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
User.create(id: 8,
            first_name: 'Tom',
            last_name: 'Anderson',
            email: 'TomA420@myspace.com',
            password: 'default',
            password_confirmation: 'default',
            img_url: 'http://i.imgur.com/w5VylSQ.jpg',
            bio: "Hey guys, it's me Tom! Just an ordinary, forgettable guy. Follow me and check out all my adventures!",
            current_city: 'Amsterdam, Netherlands',
            username: 'MyspaceRulez'
            )
User.create(id: 9,
            first_name: 'Ja',
            last_name: 'Rule',
            email: 'everythugneeds@laday.com',
            password: 'default',
            password_confirmation: 'default',
            img_url: 'http://i.imgur.com/zObeuDC.jpg',
            bio: "Who made these laws? That's what I want to know. So that's why I wear two crosses now. I call it double cross. I believe in God-not religion.
                  FyreFest 2k18 ya'll, can't wait for the next hunger games.",
            current_city: 'Exumas, Bahamas',
            username: 'jaRuleClassWar'
            )
User.create(id: 10,
            first_name: 'Stephanie',
            last_name: 'Garland',
            email: 'fakeName@fake.org',
            password: 'default',
            password_confirmation: 'default',
            img_url: 'http://i.imgur.com/Z60LgkX.jpg',
            bio: "Pommy ipsum got his end away middle class curry sauce the black death, wedding tackle balderdash off with her head nonsense pork scratchings, knackered codswallop flabbergasted off with her head. Is she 'avin a laugh rambunctious off t'pub bloke bent as a nine bob note snotty nosed brat good old fashioned knees up the chippy lost her marbles made a pig's ear of it a bit wonky Moriarty, loo it's the bees knees bugger every fortnight oopsy-daisies we'll be 'avin less of that Union Jack accordingly porky-pies. Gravy cheese and chips marvelous ever so houlligan loo rivetting stuff, scouser punter gob up the duff knee high to a grasshopper i'll be a monkey's uncle, whizz pikey off t'shop toad in the whole.",
            current_city: 'London, United Kingdom',
            username: 'jollyHood'
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
