
# require "open-uri"

puts "Destroy users"
User.destroy_all if Rails.env.development?

puts "Seeding users"

# file = URI.open('https://images.unsplash.com/photo-1534598974068-2d51eda7628f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
user1 = User.new(first_name:"D", last_name: "SK", email:"d.sk@fmi.com", password:"Nafissatou")
user1.photo.attach(io: File.open("app/assets/images/DSK.png"), filename: 'DSK.png', content_type: 'image/png')
user1.save!
# user2 = User.new(first_name:"père & fils", last_name: "Bush", email:"family.bush@liers.com", password:"Nafissatou")
# user3 = User.new(first_name:"Isabelle & Patrick", last_name: "Balkany", email:"isa_et_patoche.balkany@escrocs.fr", password:"Nafissatou")
# user4 = User.new(first_name:"Donald", last_name: "Trump", email:"d.trump@tower.us", password:"Nafissatou")
# user5 = User.new(first_name:"Richard", last_name: "Nixon", email:"deep.throat@spy.us", password:"Nafissatou")
# user6 = User.new(first_name:"Benjamin", last_name: "Griveaux", email:"benji.griveaux@youporn.com", password:"Nafissatou")


puts "Destroy vices"
Vice.destroy_all if Rails.env.development?

puts "Seeding vices"

vice1 = Vice.new(name: 'addiction aux massages de pieds', category: 'déviance sexuelle', description:'passion pour la réflexologie plantaire', price: '10 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 1);
vice1.photo.attach(io: File.open("app/assets/images/DSK.png"), filename: 'DSK.png', content_type: 'image/png')
vice1.save!
# Vice.create!(name: 'mentir pour déclencher une guerre mondiale', category: 'politic bastards', description:'vous cherchez un prétexte pour déclencher une guerre mondiale ? ', price: '50 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 2);
# Vice.create!(name: 'sex tape', category: 'déviance sexuelle', description:'petit 5 à 7 filmé par MediaPart', price: '12 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 3);
# Vice.create!(name: 'peignoir & femme de ménage', category: 'déviance sexuelle', description:"tomber le peignoir pr accueillir la femme de ménage de l'hotel", price: '20 000', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 4);
# Vice.create!(name: 'frause fiscale & corruption', category: 'détournement de biens publics', description:'clientélisme, magouilles & cpie', price: '25 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 5);
# Vice.create!(name: 'couteau dans le dos de son mentor politique', category: 'politic bastards', description:'lacher son père sprirituel politique pour son principal concurrent', price: '26 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 4);

# Vice.create!(name: 'phobie administrative', category: 'détournement de biens publics', description:'la vie avant Pass Pro Life', price: '15 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 4);
# Vice.create!(name: 'fraude électorale, fake news & manipulation', category: 'politic bastards', description:'Corrompre les médias, collaborer avec Cambridge Analytica... ', price: '100 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 4);
# Vice.create!(name: 'espionnage politique & gorge profonde', category: 'politic bastards', description:'Watergate', price: '20 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 4);




