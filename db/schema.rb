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

ActiveRecord::Schema.define(version: 21161020203731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "managers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_managers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_managers_on_reset_password_token", unique: true, using: :btree
  end

  create_table "owners", force: :cascade do |t|
    t.integer  "manager_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_owners_on_manager_id", using: :btree
  end

  create_table "tenants", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.boolean  "student"
    t.string   "employer"
    t.boolean  "down_pay"
    t.string   "phone"
    t.string   "emer_contact"
    t.string   "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "units", force: :cascade do |t|
    t.integer  "tenant_id"
    t.integer  "manager_id"
    t.integer  "owner_id"
    t.string   "name"
    t.string   "address"
    t.integer  "open_tickets"
    t.string   "tenant_signatory"
    t.string   "other_tenants"
    t.string   "notes"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["manager_id"], name: "index_units_on_manager_id", using: :btree
    t.index ["owner_id"], name: "index_units_on_owner_id", using: :btree
    t.index ["tenant_id"], name: "index_units_on_tenant_id", using: :btree
  end

  add_foreign_key "owners", "managers"
  add_foreign_key "units", "managers"
  add_foreign_key "units", "owners"
  add_foreign_key "units", "tenants"
end
