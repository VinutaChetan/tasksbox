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

ActiveRecord::Schema.define(version: 20160816055424) do

  create_table "announcements", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "mobile"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "code"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "address"
  end

  create_table "courses", force: true do |t|
    t.integer  "course_id"
    t.string   "name"
    t.integer  "instructor_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
  end

  create_table "departments", force: true do |t|
    t.string   "dept_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

  create_table "instructors", force: true do |t|
    t.integer  "instructor_id"
    t.string   "name"
    t.string   "email"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "price"
    t.integer  "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newtasks", force: true do |t|
    t.string   "title"
    t.integer  "project_id"
    t.date     "due_date"
    t.boolean  "is_completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.date     "order_date"
    t.string   "order_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.string   "unit"
    t.boolean  "in_stock"
    t.date     "available_from"
    t.integer  "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_categories", force: true do |t|
    t.string   "project_id"
    t.string   "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_end"
    t.integer  "client_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.float    "estimated_budget"
    t.string   "status"
    t.integer  "user_id"
  end

  create_table "registrations", force: true do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.string   "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "student_id"
    t.string   "name"
    t.string   "mail"
    t.string   "major"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.integer  "project_id"
    t.date     "due_date"
    t.boolean  "is_completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                   default: "user"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "venders", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
