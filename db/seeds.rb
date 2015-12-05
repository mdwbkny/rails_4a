# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create_table "listings", force: :cascade do |t|
  #   t.text     "address"
  #   t.string   "unit"
  #   t.integer  "price"
  #   t.string   "commission"
  #   t.string   "access"
  #   t.text     "description"
  #   t.text     "img_url"
  #   t.integer  "agent_id"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false
  # end

apartments = Listing.create([
	{
		address: "620 Manhattan Avenue",
		unit: "2L",
		price: 1300,
		commission: "100% OP",
		access: "Keys in GP Office",
		description: "This pre-war gem in a prime Greenpoint location is priced to rent. Call today for a viewing!",
		img_url: "620.jpg",
		agent_id: 1
	},
	{
		address: "17 Monitor Street",
		unit: "4D",
		price: 2800,
		commission: "70% OP",
		access: "FD Code #2468",
		description: "This recently renovated church building has it all. Light, views, and amenities. Call today for a viewing!",
		img_url: "17.jpg",
		agent_id: 1
	},
	{
		address: "193 Leonard Street",
		unit: "4A",
		price: 4600,
		commission: "70% OP",
		access: "Master key in BW",
		description: "Brand new church conversion that boasts lots of light, a great courtyard, and a ton of amenities",
		img_url: "193.jpg",
		agent_id: 2
	},
	{
		address: "1133 Manhattan Avenue",
		unit: "530",
		price: 3500,
		commission: "100% OP",
		access: "Call leasing office to schedule an appointment",
		description: "Brand new luxury building in the heart of Greenpoint!",
		img_url: "1133.jpg",
		agent_id: 2
	}
])

# create_table "agents", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.string "email"
#     t.string "phone"
#   end

brokers = Agent.create([
	{
	first_name: "Mike",
	last_name: "Wiesenhart",
	email: "mike@nooklyn.com",
	phone: "917-474-4022"
	},
	{
	first_name: "Alex",
	last_name: "Lust",
	email: "alex@nooklyn.com",
	phone: "917-272-2022"
	}
])

	# create_table "users", force: :cascade do |t|
  #   t.string "first_name"
  #   t.string "last_name"
  #   t.string "email"
  #   t.string "phone"
  # end

User.create({
	first_name: "Tara",
	last_name: "Schwartz",
	email: "taraschwartz@gmail.com",
	phone: "917-272-9084"
	})

User.create({
	first_name: "Connor",
	last_name: "McDavid",
	email: "cmcdavid@oilers.com",
	phone: "212-356-2453"
	})

brokers[0].listings.push(apartments[0], apartments[1])
brokers[1].listings.push(apartments[2], apartments[3])