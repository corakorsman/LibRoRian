# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120528190233) do

  create_table "games", :force => true do |t|
    t.string   "title"
    t.string   "system"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "genre"
  end

  create_table "library_object_tags", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "library_object_id"
    t.string  "library_object_type"
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.string   "medium"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "genre"
  end

  create_table "music_objects", :force => true do |t|
    t.string   "title"
    t.string   "artist"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "medium"
    t.string   "genre"
  end

  create_table "tags", :force => true do |t|
    t.string "name"
  end

end
