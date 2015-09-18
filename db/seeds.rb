User.delete_all
Venue.delete_all
Event.delete_all

@users = User.create([

	{email: "sonic@yahoo.com", password: "password"}, {"Technicolor Formula", email: "techni@gmail.com", password: "password"}

	])

@venues = Venue.create([

	{name: "The Pad", location: "Covina", image_url: "http://www.jmu.edu/jmuarts/forbescenter/lightbox/photos/Forbes_Center_ConcertHall_Large_1.jpg"}, {name: "House of Blues", location: "Hollywood", image_url: "http://www.californianightlife.com/administration/GetImage.ashx?images/u/event/houseofblues_002.jpg"}, {name: "The Red Orange", location: "Upland", image_url: "http://i1.ytimg.com/vi/YvzpKASEW7U/maxresdefault.jpg"}, {name: "The Faker", location: "Pawnee", image_url: "http://www.bartellhotels.com/d/bartell/media/Concerts/__thumbs_964_530_crop/Concert_venue_2011.jpg?1325697469"}, {name: "Pasta Monsta", location: "Greece", image_url: "https://www.google.com/search?q=Concert+Venues&espv=2&biw=1438&bih=733&source=lnms&tbm=isch&sa=X&ved=0CAcQ_AUoAmoVChMImtG2loL_xwIVRVuICh0sTAez#imgrc=D3To8xD46e0fkM%3A"}, {name: "Django's Laboratory", location: "Papa New Guinea", image_url: "http://i.cdn.travel.cnn.com/sites/default/files/styles/inline_image_624x416/public/2012/05/08/main-inline-michael-goldman.jpg?itok=LlFsL1G9"}, {name: "Quiche Fix", location: "London", image_url: "http://www.wired.com/wp-content/uploads/images_blogs/wiredscience/2012/06/the-greek.jpg"}, {name: "Maple Story", location: "Paris", image_url: "http://img1.10bestmedia.com/Images/Photos/265647/Pearl-Full-Room-from-house-sml_54_990x660.jpg"}, {name: "World of Warcraft", location: "Russia", image_url: "http://img1.10bestmedia.com/Images/Photos/226799/HardRockCafe1_54_990x660_201406020242.jpg"}, {name: "Dark Horse", location: "San Francisco", image_url: "http://www.visitorlando.com/includes/content/images/listings/full_171376_12984.jpg"}

	])


30.times do 
	User.create({email:Faker::Internet.free_email,password:"password"})
end

20.times do
	Event.create({name:Faker::Commerce.product_name,user_id: User.all.sample.id,venue_id: Venue.all.sample.id,body:Faker::Lorem.sentence(15),date_time:Faker::Time.forward(60, :evening)})
end