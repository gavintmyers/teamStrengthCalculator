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

ActiveRecord::Schema.define(version: 20160316203620) do

  create_table "clients", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients_sprints", id: false, force: :cascade do |t|
    t.integer "client_id"
    t.integer "sprint_id"
  end

  create_table "developers", force: :cascade do |t|
    t.text     "name"
    t.text     "dev_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developers_sprints", id: false, force: :cascade do |t|
    t.integer "developer_id"
    t.integer "sprint_id"
  end

  create_table "hours", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "developer_id"
    t.integer  "sprint_id"
    t.integer  "number_of_hours"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sprints", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "iteration_length"
    t.decimal  "part_time_multiplier"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
