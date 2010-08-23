# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100821124524) do

  create_table "keywords", :force => true do |t|
    t.string   "keyword_name"
    t.string   "keyword_sanitize"
    t.string   "source"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scrap_photos", :force => true do |t|
    t.integer  "keyword_id"
    t.integer  "scrap_xml_id"
    t.string   "title"
    t.string   "url_square"
    t.string   "url_thumbnail"
    t.string   "url_small"
    t.string   "url_medium"
    t.string   "url_large"
    t.string   "url_original"
    t.string   "description"
    t.string   "author"
    t.string   "license"
    t.integer  "original_id"
    t.integer  "status"
    t.integer  "selected_photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "secret"
    t.string   "server"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "accuracy"
    t.string   "place_id"
    t.string   "woeid"
    t.string   "farm"
    t.string   "is_family"
    t.string   "is_friend"
    t.string   "is_public"
    t.string   "tags"
  end

  create_table "scrap_xmls", :force => true do |t|
    t.integer  "keyword_id"
    t.string   "xml_file"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
