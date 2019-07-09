# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


pierce = User.create!(email: 'pierce@pierce.com', password: '123456', username: 'PIERCE9000', bio: 'Born in Bangalore, I brought the best of India to America where I am focusing on allowing my users to conquer time.  I adopted Benjamin Franklins last name in order to super duper own procrastination.', location: 'Kyoto', age: 25, gender: 'male')
pierce = User.create!(email: 'pontus@pontus.com', password: '123456', username: 'THE_PONT5000', bio: 'Born in Sweden, I brought the best of Ikea to Kyoto where I am focusing on bringing beauty to even the dullest websites!  I am sick of Ikea and POTUS jokes!', location: 'Kyoto', age: 24, gender: 'male')

journal1 = Journal.create!(user_id: 1, title: 'Create Conquered Time!')
journal2 = Journal.create!(user_id: 2, title: 'Create a super awesome portfolio')
journal3 = Journal.create!(user_id: 1, title: 'Eat all the sugar!')
journal4 = Journal.create!(user_id: 2, title: 'Code all the front ends!')


entry1 = Entry.create!(goal: 'create website', date: Date.today, journal_id: 1)
entry2 = Entry.create!(goal: 'create seeds', date: Date.today, journal_id: 1)

entry3 = Entry.create!(goal: 'create website', date: Date.today, journal_id: 2)
entry4 = Entry.create!(goal: 'make website pretty', date: Date.today, journal_id: 2)

entry5 = Entry.create!(goal: 'Drink matcha tea', date: Date.today, journal_id: 3)
entry6 = Entry.create!(goal: 'eat icecream', date: Date.today, journal_id: 3)

entry7 = Entry.create!(goal: 'make figma', date: Date.today, journal_id: 4)
entry8 = Entry.create!(goal: 'do the front end stuff', date: Date.today, journal_id: 4)


milestone1 = Milestone.create!(title: 'headers', entry_id: 1)
milestone2 = Milestone.create!(title: 'body', entry_id: 1)
milestone3 = Milestone.create!(title: 'footers', entry_id: 1)


milestone4 = Milestone.create!(title: 'users', entry_id: 2)
milestone5 = Milestone.create!(title: 'entries', entry_id: 2)
milestone6 = Milestone.create!(title: 'journals', entry_id: 2)


milestone7 = Milestone.create!(title: 'headers', entry_id: 3)
milestone8 = Milestone.create!(title: 'body', entry_id: 3)
milestone9 = Milestone.create!(title: 'footers', entry_id: 3)


milestone10 = Milestone.create!(title: 'bootstrap', entry_id: 4)
milestone11 = Milestone.create!(title: 'simpleform', entry_id: 4)
milestone12 = Milestone.create!(title: 'figma', entry_id: 4)


milestone13 = Milestone.create!(title: 'hot water', entry_id: 5)
milestone14 = Milestone.create!(title: 'tea', entry_id: 5)
milestone15 = Milestone.create!(title: 'ton of sugar', entry_id: 5)


milestone16 = Milestone.create!(title: '711', entry_id: 6)
milestone17 = Milestone.create!(title: 'buy icecream', entry_id: 6)
milestone18 = Milestone.create!(title: 'eat icecream', entry_id: 6)


milestone19 = Milestone.create!(title: 'buttons', entry_id: 7)
milestone20 = Milestone.create!(title: 'routes', entry_id: 7)
milestone21 = Milestone.create!(title: 'pages', entry_id: 7)


milestone22 = Milestone.create!(title: 'javascript', entry_id: 1)
milestone23 = Milestone.create!(title: 'css', entry_id: 1)
milestone24 = Milestone.create!(title: 'animations', entry_id: 1)
