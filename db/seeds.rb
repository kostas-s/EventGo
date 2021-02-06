# create_table "events", force: :cascade do |t|
#   t.string "title"
#   t.string "location"
#   t.datetime "date"
#   t.integer "user_id"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["user_id"], name: "index_events_on_user_id"
# end
#
# create_table "users", force: :cascade do |t|
#   t.string "name"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end
#
u1 = User.find_or_create_by(name: "Eric Clapton")
u2 = User.find_or_create_by(name: "Pat Metheny")
u3 = User.find_or_create_by(name: "John Petrucci")
u4 = User.find_or_create_by(name: "Steve Vai")
u5 = User.find_or_create_by(name: "Amy Winehouse")
u6 = User.find_or_create_by(name: "Ella Fitzgerald")
u7 = User.find_or_create_by(name: "Freddie Mercury")
e = u1.hosted_events.find_or_create_by(title: "Jam at Eric's place", location: "Eric's", description: 'Hey everyone, you are invited to play at my place. You can try out my new strats!', date: DateTime.new(2021, 10, 23, 20, 10, 0))
u1.invitations.find_or_create_by(event_id: e.id)
u2.invitations.find_or_create_by(event_id: e.id)
u3.invitations.find_or_create_by(event_id: e.id)
u5.invitations.find_or_create_by(event_id: e.id)

e2 = u2.hosted_events.find_or_create_by(title: "Lets talk about Jazz...", location: "Cafe Jazze", description: 'I really have some topics i want to discuss with you. The current state of the Jazz scene is not the best. Lets find some ways to improve that together!', date: DateTime.new(2021, 3, 20, 19, 05, 0))
u2.invitations.find_or_create_by(event_id: e2.id)
u5.invitations.find_or_create_by(event_id: e2.id)
u6.invitations.find_or_create_by(event_id: e2.id)

e3 = u3.hosted_events.find_or_create_by(title: "BBQ @ My Yard", location: "Long Island",
                                        description: "Let's hang around and have some delicious burgers, grilled by yours truly. I know all of you want to come! Don't miss it...", date: DateTime.new(2021, 1, 14, 12, 05, 0))
u1.invitations.find_or_create_by(event_id: e3.id)
u2.invitations.find_or_create_by(event_id: e3.id)
u3.invitations.find_or_create_by(event_id: e3.id)
u4.invitations.find_or_create_by(event_id: e3.id)
u5.invitations.find_or_create_by(event_id: e3.id)
u6.invitations.find_or_create_by(event_id: e3.id)

e4 = u7.hosted_events.find_or_create_by(title: "Show must go on", location: "Heaven",
                                        description: "I know it's not the most accessible location, but i'll do with what I can. Lets have some heavenly fun!", date: DateTime.new(2021, 7, 17, 22, 24, 0))
u5.invitations.find_or_create_by(event_id: e4.id)
u6.invitations.find_or_create_by(event_id: e4.id)
u7.invitations.find_or_create_by(event_id: e4.id)

e5 = u7.hosted_events.find_or_create_by(title: "Talkshow: Buddhism and Guitars", location: "Webinar",
                                        description: "There's more to guitars than notes and strings. And to be the absolute best you can be, you have to master all those
other aspects as well. Join me on Zoom on time and dont forget to attend in EventGo!", date: DateTime.new(2020, 7, 25, 20, 33, 0))
u1.invitations.find_or_create_by(event_id: e5.id)
u2.invitations.find_or_create_by(event_id: e5.id)
u3.invitations.find_or_create_by(event_id: e5.id)
u4.invitations.find_or_create_by(event_id: e5.id)
u5.invitations.find_or_create_by(event_id: e5.id)
u6.invitations.find_or_create_by(event_id: e5.id)