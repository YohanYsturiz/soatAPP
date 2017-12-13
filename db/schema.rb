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

ActiveRecord::Schema.define(version: 20171213152155) do

  create_table "ages", force: :cascade do |t|
    t.integer  "id_ages"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "classifications", force: :cascade do |t|
    t.integer  "id_classification"
    t.string   "descripcion"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "coches", force: :cascade do |t|
    t.string   "placa"
    t.string   "clase"
    t.integer  "subtipo"
    t.integer  "edad"
    t.integer  "numero_pasajero"
    t.integer  "cilindraje"
    t.integer  "toneladas"
    t.string   "propietario"
    t.string   "poliza"
    t.integer  "users_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "tipo_documento"
    t.integer  "numero_documento"
    t.string   "nombre_tomador"
    t.string   "apellido_tomador"
    t.string   "email_tomador"
    t.integer  "telefono_tomador"
    t.string   "pago_poliza"
  end

  add_index "coches", ["users_id"], name: "index_coches_on_users_id"

  create_table "coverages", force: :cascade do |t|
    t.integer  "gasto_funerario"
    t.integer  "gasto_medico"
    t.integer  "inc_permanente"
    t.string   "gasto_transporte"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "rates", force: :cascade do |t|
    t.integer  "id_rates"
    t.integer  "id_classifications"
    t.integer  "id_subclassification"
    t.integer  "id_age"
    t.float    "tasa_comercial"
    t.float    "value_prima"
    t.float    "contribucion"
    t.float    "subtotal"
    t.float    "runt"
    t.float    "total"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "classification_id"
    t.integer  "typeclassification_id"
  end

  create_table "subclassifications", force: :cascade do |t|
    t.integer  "id_subclassifications"
    t.string   "descripcion"
    t.integer  "classification_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "subclassifications", ["classification_id"], name: "index_subclassifications_on_classification_id"

  create_table "typeclassifications", force: :cascade do |t|
    t.integer  "id_type"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username",               default: "", null: false
    t.string   "name"
    t.string   "last_name"
    t.text     "bio"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "cedula"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehiculos", force: :cascade do |t|
    t.string   "placa"
    t.string   "clase"
    t.integer  "subtipo"
    t.integer  "edad"
    t.integer  "numero_pasajero"
    t.integer  "cilindraje"
    t.integer  "toneladas"
    t.string   "propietario"
    t.string   "poliza"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
