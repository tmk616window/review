# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_19_194613) do

  create_table "details", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer "user_id"
    t.integer "follower_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_email"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "task_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "message_id"
    t.string "date"
    t.integer "place"
    t.integer "people"
    t.string "message_place"
    t.text "message_coment"
    t.string "image"
  end

  create_table "posts", force: :cascade do |t|
    t.string "poat_name"
    t.text "post_content"
    t.integer "post_old"
    t.string "post_sex"
    t.string "post_job"
    t.string "post_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "post_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "job"
    t.string "pl"
    t.integer "period"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "task_id"
    t.integer "task_user_email"
    t.text "user_email"
    t.text "design"
    t.integer "design_point"
    t.text "function"
    t.integer "function_point"
    t.text "plan"
    t.integer "plan_point"
    t.text "unique"
    t.integer "unique_point"
    t.text "user_perspective"
    t.integer "user_perspective_point"
    t.string "recruit"
    t.string "field"
    t.integer "task_old"
    t.string "task_pl"
    t.string "task_tool"
    t.text "github_url"
    t.text "work_explain"
    t.integer "study_period"
    t.string "company_info"
    t.text "task_coment"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "users_id"
    t.text "coment"
    t.integer "old"
    t.string "programing_language"
    t.string "job_past"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
