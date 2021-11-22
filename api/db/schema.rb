# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_21_224633) do

  create_table "candidate_rounds", force: :cascade do |t|
    t.integer "votes"
    t.integer "candidate_id"
    t.integer "round_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "election_id"
    t.index ["candidate_id"], name: "index_candidate_rounds_on_candidate_id"
    t.index ["election_id"], name: "index_candidate_rounds_on_election_id"
    t.index ["round_id"], name: "index_candidate_rounds_on_round_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "name", null: false
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "elections", force: :cascade do |t|
    t.string "name", null: false
    t.string "position", null: false
    t.integer "election_type"
    t.integer "region"
    t.integer "status"
    t.integer "winning_candidate_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "ordinal", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
