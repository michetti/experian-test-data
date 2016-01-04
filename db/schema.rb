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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160101015959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string  "reference"
    t.string  "ssn"
    t.string  "first_name"
    t.string  "middle_name"
    t.string  "last_name"
    t.date    "dob"
    t.string  "phone"
    t.string  "address"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.integer "fico"
    t.integer "public_records"
    t.integer "bankruptcies"
    t.integer "liens"
    t.integer "trades"
    t.integer "education"
    t.integer "mortgage"
    t.integer "was_delinquent_30_days"
    t.integer "was_delinquent_60_days"
    t.integer "was_delinquent_90_days"
    t.integer "was_delinquent_120_days"
    t.integer "delinquent_30_days"
    t.integer "delinquent_60_days"
    t.integer "delinquent_90_days"
    t.integer "delinquent_120_days"
    t.integer "paid_was_delinquent_30_days"
    t.integer "paid_was_delinquent_60_days"
    t.integer "paid_was_delinquent_90_days"
    t.integer "paid_was_delinquent_120_days"
    t.integer "foreclosures"
    t.integer "repossessions"
    t.integer "charge_offs"
    t.integer "other_derogatories"
    t.integer "collections"
  end

  add_index "profiles", ["bankruptcies"], name: "index_profiles_on_bankruptcies", using: :btree
  add_index "profiles", ["charge_offs"], name: "index_profiles_on_charge_offs", using: :btree
  add_index "profiles", ["collections"], name: "index_profiles_on_collections", using: :btree
  add_index "profiles", ["delinquent_120_days"], name: "index_profiles_on_delinquent_120_days", using: :btree
  add_index "profiles", ["delinquent_30_days"], name: "index_profiles_on_delinquent_30_days", using: :btree
  add_index "profiles", ["delinquent_60_days"], name: "index_profiles_on_delinquent_60_days", using: :btree
  add_index "profiles", ["delinquent_90_days"], name: "index_profiles_on_delinquent_90_days", using: :btree
  add_index "profiles", ["dob"], name: "index_profiles_on_dob", using: :btree
  add_index "profiles", ["education"], name: "index_profiles_on_education", using: :btree
  add_index "profiles", ["fico"], name: "index_profiles_on_fico", using: :btree
  add_index "profiles", ["foreclosures"], name: "index_profiles_on_foreclosures", using: :btree
  add_index "profiles", ["liens"], name: "index_profiles_on_liens", using: :btree
  add_index "profiles", ["mortgage"], name: "index_profiles_on_mortgage", using: :btree
  add_index "profiles", ["other_derogatories"], name: "index_profiles_on_other_derogatories", using: :btree
  add_index "profiles", ["paid_was_delinquent_120_days"], name: "index_profiles_on_paid_was_delinquent_120_days", using: :btree
  add_index "profiles", ["paid_was_delinquent_30_days"], name: "index_profiles_on_paid_was_delinquent_30_days", using: :btree
  add_index "profiles", ["paid_was_delinquent_60_days"], name: "index_profiles_on_paid_was_delinquent_60_days", using: :btree
  add_index "profiles", ["paid_was_delinquent_90_days"], name: "index_profiles_on_paid_was_delinquent_90_days", using: :btree
  add_index "profiles", ["public_records"], name: "index_profiles_on_public_records", using: :btree
  add_index "profiles", ["reference"], name: "index_profiles_on_reference", unique: true, using: :btree
  add_index "profiles", ["repossessions"], name: "index_profiles_on_repossessions", using: :btree
  add_index "profiles", ["state"], name: "index_profiles_on_state", using: :btree
  add_index "profiles", ["trades"], name: "index_profiles_on_trades", using: :btree
  add_index "profiles", ["was_delinquent_120_days"], name: "index_profiles_on_was_delinquent_120_days", using: :btree
  add_index "profiles", ["was_delinquent_30_days"], name: "index_profiles_on_was_delinquent_30_days", using: :btree
  add_index "profiles", ["was_delinquent_60_days"], name: "index_profiles_on_was_delinquent_60_days", using: :btree
  add_index "profiles", ["was_delinquent_90_days"], name: "index_profiles_on_was_delinquent_90_days", using: :btree

end
