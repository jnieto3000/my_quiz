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

ActiveRecord::Schema.define(version: 20140729185440) do

  create_table "notes", force: true do |t|
    t.integer  "student_id"
    t.text     "contents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", force: true do |t|
    t.integer  "teacher_id"
    t.string   "name"
    t.string   "question_1"
    t.string   "q1_option_1"
    t.string   "q1_option_2"
    t.string   "q1_option_3"
    t.integer  "answer_1"
    t.string   "question_2"
    t.string   "q2_option_1"
    t.string   "q2_option_2"
    t.string   "q2_option_3"
    t.integer  "answer_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submissions", force: true do |t|
    t.integer  "student_id"
    t.integer  "quiz_id"
    t.integer  "answer_1"
    t.integer  "answer_2"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
