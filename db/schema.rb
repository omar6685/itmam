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

ActiveRecord::Schema[7.0].define(version: 2023_06_27_115103) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activity_tables", force: :cascade do |t|
    t.string "activitiy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_sizes", force: :cascade do |t|
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inspections", force: :cascade do |t|
    t.string "company_name"
    t.integer "branchs_quantity"
    t.bigint "company_status_id", null: false
    t.integer "saudi_employees"
    t.integer "nonsaudi_employees"
    t.boolean "salary_protection"
    t.boolean "want_inspection"
    t.string "personal_name"
    t.integer "phone_number"
    t.string "email"
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_status_id"], name: "index_inspections_on_company_status_id"
  end

  create_table "nitak_tables", force: :cascade do |t|
    t.bigint "activity_table_id", null: false
    t.bigint "company_status_id", null: false
    t.float "fixed_value"
    t.float "yearly_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_table_id"], name: "index_nitak_tables_on_activity_table_id"
    t.index ["company_status_id"], name: "index_nitak_tables_on_company_status_id"
  end

  create_table "studies", force: :cascade do |t|
    t.integer "foreigner"
    t.integer "saudi"
    t.integer "ajier"
    t.integer "special_foreigner"
    t.integer "special_saudis"
    t.float "localization_rate"
    t.integer "saudi_four"
    t.integer "saudi_three_four"
    t.integer "saudi_three"
    t.integer "visa"
    t.integer "saudi_disable"
    t.boolean "adaptation"
    t.integer "saudi_jailed"
    t.integer "saudi_student"
    t.integer "saudi_online"
    t.integer "saudi_player"
    t.integer "saudi_loan_player"
    t.integer "foreigner_like_saudi"
    t.integer "foreigner_like_foreigner"
    t.integer "specialy_foreigner"
    t.integer "tribe_saudi"
    t.integer "gulf_citizen"
    t.integer "owner"
    t.integer "red_week"
    t.integer "uncounted_saudi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "inspections", "company_statuses"
  add_foreign_key "nitak_tables", "activity_tables"
  add_foreign_key "nitak_tables", "company_statuses"
end
