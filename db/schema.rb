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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170306153815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leads", force: :cascade do |t|
    t.string   "prefix"
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "organization_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "website"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "opportunities", force: :cascade do |t|
    t.string   "opportunity_name"
    t.string   "opportunity_description"
    t.string   "opportunity_solution"
    t.string   "opportunity_solution_description"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "organisations", force: :cascade do |t|
    t.string   "name_of_organisation"
    t.string   "description_of_organisation"
    t.string   "organisation_email"
    t.string   "organisation_phone"
    t.string   "organisation_website"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
