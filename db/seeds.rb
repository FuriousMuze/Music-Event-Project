User.delete_all
Venue.delete_all
Event.delete_all

@users = User.create([

	{user_name: "Sonic Animals", email: "sonic@yahoo.com", password: "password"}, {user_name: "Juan", email: "juancacho@ymail.com", password: "password"}, {user_name: "Technicolor Formula", email: "techni@gmail.com", password: "password"}

	])


@venues = Venue.create([

	{name: "The pad", location: "Covina", image_url: "http://www.jmu.edu/jmuarts/forbescenter/lightbox/photos/Forbes_Center_ConcertHall_Large_1.jpg"}, {name: "House of Blues", location: "Hollywood", image_url: "http://www.californianightlife.com/administration/GetImage.ashx?images/u/event/houseofblues_002.jpg"}

	])

@events = Event.create([

	{name: "Sonic Animals live at The Pad", user_id: @users.first.id, venue_id: @venues.first.id,body: "oasdifasdllaskdfalsdsadkfas. kas dkjasa dlldsd.", date_time: Time.now + (2*7*24*60*60)},
	{name: "Technicolor Formula live at the House of Blues", user_id: @users.last.id, venue_id: @venues.last.id ,body: "sdfgsgdf sdfgkld asdfjkasdlk asdfasdflksad ;kladfs asdfadskl asdfas fal f affdslklpweroirjhsadn dasf.", date_time: Time.now + (2*7*24*60*60)},
	{name: "Juan", user_id: @users[1].id, venue_id: @venues.first.id ,body: "asdfal oasdfs kasd", date_time: Time.now + (2*7*24*60*60)}

	])



