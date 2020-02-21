
# require "open-uri"

puts "Destroy users"
User.destroy_all

puts "Seeding users"

# file = URI.open('https://images.unsplash.com/photo-1534598974068-2d51eda7628f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')

user1 = User.new(first_name:"Benjamin", last_name: "GRIVEAUX", email:"benji.griveaux@youporn.com", password:"Nafissatou")
user1.photo.attach(io: File.open("app/assets/images/Griveaux.jpg"), filename: 'Griveaux.jpg', content_type: 'image/jpg')
user1.save!
user2 = User.new(first_name:"père & fils", last_name: "BUSH", email:"family.bush@liers.com", password:"Nafissatou")
user2.photo.attach(io: File.open("app/assets/images/Bush-père-et-fils.jpg"), filename: 'Bush-père-et-fils.jpg', content_type: 'image/jpg')
user2.save!
user3 = User.new(first_name:"D", last_name: "SK", email:"d.sk@fmi.com", password:"Nafissatou")
user3.photo.attach(io: File.open("app/assets/images/DSK.png"), filename: 'DSK.png', content_type: 'image/png')
user3.save!
user4 = User.new(first_name:"Georges", last_name: "TRON", email:"g.tron@darbre.fr", password:"Nafissatou")
user4.photo.attach(io: File.open("app/assets/images/Georges-Tron.jpg"), filename: 'Georges-Tron.jpg', content_type: 'image/jpg')
user4.save!
user5 = User.new(first_name:"Kim", last_name: "JONG-IL", email:"kimi@panda.eu", password:"Nafissatou")
user5.photo.attach(io: File.open("app/assets/images/KimJongIl.jpg"), filename: 'KimJongIl.jpg', content_type: 'image/jpg')
user5.save!
user6 = User.new(first_name:"Isa & Patoche", last_name: "BALKANY", email:"isa_et_patoche.balkany@escrocs.fr", password:"Nafissatou")
user6.photo.attach(io: File.open("app/assets/images/Balkany.jpg"), filename: 'Balkany.jpg', content_type: 'image/jpg')
user6.save!
user7 = User.new(first_name:"Donald", last_name: "TRUMP", email:"d.trump@tower.us", password:"Nafissatou")
user7.photo.attach(io: File.open("app/assets/images/Trump.jpg"), filename: 'Trump.jpg', content_type: 'image/jpg')
user7.save!
user8 = User.new(first_name:"Jair", last_name: "BOLSONARO", email:"j.bolsonaro@wwf.br", password:"Nafissatou")
user8.photo.attach(io: File.open("app/assets/images/Bolsonaro.jpg"), filename: 'Bolsonaro.jpg', content_type: 'image/jpg')
user8.save!
user9 = User.new(first_name:"François", last_name: "FILLON", email:"ff@fff.com", password:"Nafissatou")
user9.photo.attach(io: File.open("app/assets/images/françois_fillon.jpg"), filename: 'françois_fillon.jpg', content_type: 'image/jpg')
user9.save!
user10 = User.new(first_name:"Richard", last_name: "NIXON", email:"deep.throat@spy.us", password:"Nafissatou")
user10.photo.attach(io: File.open("app/assets/images/watergate.jpg"), filename: 'watergate.jpg', content_type: 'image/jpg')
user10.save!
user11 = User.new(first_name:"Thomas", last_name: "THEVENOUD", email:"t.thevenoud@impot-gouv.fr", password:"Nafissatou")
user11.photo.attach(io: File.open("app/assets/images/Thevenoud.jpg"), filename: 'Thevenoud.jpg', content_type: 'image/jpg')
user11.save!
user12 = User.new(first_name:"Vladimir", last_name: "POUTINE", email:"vlad.poutou@kgb.fr", password:"Nafissatou")
user12.photo.attach(io: File.open("app/assets/images/VladimirPoutine.jpg"), filename: 'VladimirPoutine.jpg', content_type: 'image/jpg')
user12.save!





puts "Destroy vices"
Vice.destroy_all

puts "Seeding vices"

vice1 = Vice.new(name: 'sex tape', category: 'scandale sexuel', description:'petit 5 à 7 filmé par MediaPart', price: '12 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '103 rue notre dame 33000 Bordeaux', user_id: 1);
vice1.photo.attach(io: File.open("app/assets/images/sextape.jpg"), filename: 'sextape.jpg', content_type: 'image/jpg')
vice1.save!
vice2 = Vice.new(name: 'mentir pour déclencher une guerre mondiale', category: 'politic bastards', description:'vous cherchez un prétexte pour déclencher une guerre mondiale ? ', price: '50 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '102 rue notre dame 33000 Bordeaux', user_id: 2);
vice2.photo.attach(io: File.open("app/assets/images/nuclearbomb.jpg"), filename: 'nuclearbomb.jpg', content_type: 'image/jpg')
vice2.save!
vice3 = Vice.new(name: 'peignoir & femme de ménage', category: 'scandale sexuel', description:"tomber le peignoir pr accueillir la femme de ménage de l'hotel", price: '20 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '110 rue notre dame 33000 Bordeaux', user_id: 3);
vice3.photo.attach(io: File.open("app/assets/images/peignoirexibition.jpg"), filename: 'peignoirexibition.jpg', content_type: 'image/jpg')
vice3.save!
vice4 = Vice.new(name: 'addiction aux massages de pieds', category: 'scandale sexuel', description:'passion pour la réflexologie plantaire', price: '10 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '100 rue notre dame 33000 Bordeaux', user_id: 4);
vice4.photo.attach(io: File.open("app/assets/images/footmassage.jpg"), filename: 'footmassage.jpg', content_type: 'image/jpg')
vice4.save!
vice5 = Vice.new(name: 'empoisonner ses opposants politiques', category: 'politic bastards', description:"la meilleure façon de battre ses concurrents est de ne pas en avoir", price: '100 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '10 rue notre dame 33000 Bordeaux', user_id: 5);
vice5.photo.attach(io: File.open("app/assets/images/assassinats_politiques.jpg"), filename: 'assassinats_politiques.jpg', content_type: 'image/jpg')
vice5.save!
vice6 = Vice.new(name: 'frause fiscale & corruption', category: 'détournement de fonds publics', description:'clientélisme, magouilles & cpie', price: '24 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '90 rue notre dame 33000 Bordeaux', user_id: 1);
vice6.photo.attach(io: File.open("app/assets/images/fraude_fiscale.jpg"), filename: 'fraude_fiscale.jpg', content_type: 'image/jpg')
vice6.save!
vice7 = Vice.new(name: "trucage numérique d'élections", category: 'politic bastards', description:'partenariat avec Cambridge Analytica', price: '15 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '1 cours xavier arnozan 33000 Bordeaux', user_id: 7);
vice7.photo.attach(io: File.open("app/assets/images/trucage_élection.jpeg"), filename: 'trucage_élection.jpeg', content_type: 'image/jpg')
vice7.save!
vice8 = Vice.new(name: 'déforestation massive', category: 'climato-sceptiques', description:"se servir de l'Amazonie pour un super feu de la Saint Jean", price: '150 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '10 rue notre dame 33000 Bordeaux', user_id: 8);
vice8.photo.attach(io: File.open("app/assets/images/déforestation.jpeg"), filename: 'déforestation.jpeg', content_type: 'image/jpeg')
vice8.save!
vice9 = Vice.new(name: 'emploi fictif', category: 'détournement de fonds publics', description:'partager le travail avec son épouse', price: '15 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '1 cours xavier arnozan 33000 Bordeaux', user_id: 9);
vice9.photo.attach(io: File.open("app/assets/images/emploifictif.jpg"), filename: 'emploifictif.jpg', content_type: 'image/jpg')
vice9.save!
vice10 = Vice.new(name: 'espionnage politique & gorge profonde', category: 'politic bastards', description:'témoignage du Watergate', price: '20 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '10 rue notre dame 33000 Bordeaux', user_id: 10);
vice10.photo.attach(io: File.open("app/assets/images/watergate.jpg"), filename: 'watergate.jpg', content_type: 'image/jpg')
vice10.save!
vice11 = Vice.new(name: 'phobie administrative', category: 'détournement de fonds publics', description:'la vie avant Pass Pro Life', price: '26 000€', starting_date: '2020-02-18', ending_date:'2020-03-01', address: '95 rue notre dame 33000 Bordeaux', user_id: 11);
vice11.photo.attach(io: File.open("app/assets/images/phobie-administrative.jpg"), filename: 'phobie-administrative.jpg', content_type: 'image/jpg')
vice11.save!










