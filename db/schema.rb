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

ActiveRecord::Schema.define(version: 20130728055926) do

  create_table "hosts", force: true do |t|
    t.string  "hostname"
    t.integer "host_id"
  end

  create_table "incidents", force: true do |t|
    t.integer  "problem_id"
    t.integer  "host_id"
    t.integer  "service_id"
    t.integer  "status_id"
    t.string   "output"
    t.datetime "open"
    t.string   "jira_id"
    t.string   "jira_url"
    t.string   "acknowledged_by"
    t.datetime "closed"
    t.string   "closed_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "incidents", ["jira_id"], name: "index_incidents_on_jira_id"
  add_index "incidents", ["problem_id"], name: "index_incidents_on_problem_id"

  create_table "services", force: true do |t|
    t.string "service"
  end

  create_table "states", force: true do |t|
    t.string "state"
  end

end
