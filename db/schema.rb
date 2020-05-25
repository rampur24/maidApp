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

ActiveRecord::Schema.define(version: 2020_05_25_181248) do

  create_table "service_type_names", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "servicetypeId"
    t.string "ServiceName"
    t.integer "ServiceType"
    t.string "Servicedescription"
    t.integer "ServiceStatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_infos", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "UserID"
    t.string "PhoneNumber"
    t.string "Gender"
    t.string "Age"
    t.integer "UserType"
    t.datetime "AcountCreationDate"
    t.datetime "LastUpdate"
    t.boolean "IsAcountActive"
    t.string "UserCity"
    t.string "UserArea"
    t.string "PinCode"
    t.string "LocalAddress"
    t.decimal "Latitute", precision: 10
    t.decimal "Longitude", precision: 10
    t.boolean "GovtIDVerified"
    t.string "OTP"
    t.string "ServiceType"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users_govt_ids", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "UserID"
    t.string "Image"
    t.string "GovtIDName"
    t.integer "IsValidate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
