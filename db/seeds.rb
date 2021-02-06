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
u = User.create(name:"Kostas")
e = Event.create(title:"Event Title 1", location:"Athens", date:Date.new, user:u)
