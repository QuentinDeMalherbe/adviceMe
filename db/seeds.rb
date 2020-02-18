# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Destroy users"
User.destroy_all if Rails.env.development?

puts "Seeding users"

User.create!(first_name:"D", last_name: "SK", email:"d.sk@fmi.com", password:"Nafissatou")
User.create!(first_name:"père & fils", last_name: "Bush", email:"family.bush@liers.com", password:"Nafissatou")
User.create!(first_name:"Isabelle & Patrick", last_name: "Balkany", email:"isa_et_patoche.balkany@escrocs.fr", password:"Nafissatou")
User.create!(first_name:"Donald", last_name: "Trump", email:"d.trump@tower.us", password:"Nafissatou")
User.create!(first_name:"Richard", last_name: "Nixon", email:"deep.throat@spy.us", password:"Nafissatou")
User.create!(first_name:"Benjamin", last_name: "Griveaux", email:"benji.griveaux@youporn.com", password:"Nafissatou")


puts "Destroy vices"
Vice.destroy_all if Rails.env.development?

puts "Seeding vices"

Vice.create!(name: 'addiction aux massages de pieds', category: 'déviance sexuelle', description:'passion pour la réflexologie plantaire', price: '10 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 14);
Vice.create!(name: 'mentir pour déclencher une guerre mondiale', category: 'politic bastards', description:'vous cherchez un prétexte pour déclencher une guerre mondiale ? ', price: '50 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 15);
Vice.create!(name: 'sex tape', category: 'déviance sexuelle', description:'petit 5 à 7 filmé par MediaPart', price: '12 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 16);
Vice.create!(name: 'peignoir & femme de ménage', category: 'déviance sexuelle', description:"tomber le peignoir pr accueillir la femme de ménage de l'hotel", price: '20 000', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 17);
Vice.create!(name: 'frause fiscale & corruption', category: 'détournement de biens publics', description:'clientélisme, magouilles & cpie', price: '25 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 18);
Vice.create!(name: 'couteau dans le dos de son mentor politique', category: 'politic bastards', description:'lacher son père sprirituel politique pour son principal concurrent', price: '26 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 17);

Vice.create!(name: 'phobie administrative', category: 'détournement de biens publics', description:'la vie avant Pass Pro Life', price: '15 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 17);
Vice.create!(name: 'fraude électorale, fake news & manipulation', category: 'politic bastards', description:'Corrompre les médias, collaborer avec Cambridge Analytica... ', price: '100 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 17);
Vice.create!(name: 'espionnage politique & gorge profonde', category: 'politic bastards', description:'Watergate', price: '20 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', user_id: 17);




