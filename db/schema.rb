# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_221_014_084_724) do
  create_table 'courses', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'name'
  end

  create_table 'groups', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'name'
  end

  create_table 'lessons', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'location'
    t.bigint 'group_id'
    t.bigint 'teacher_id'
    t.bigint 'course_id'
    t.time 'hour'
    t.string 'day'
    t.index ['course_id'], name: 'index_lessons_on_course_id'
    t.index ['group_id'], name: 'index_lessons_on_group_id'
    t.index ['teacher_id'], name: 'index_lessons_on_teacher_id'
  end

  create_table 'users', charset: 'utf8mb4', collation: 'utf8mb4_0900_ai_ci', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'name'
    t.string 'type'
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'group_id'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['group_id'], name: 'index_users_on_group_id'
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end
end
