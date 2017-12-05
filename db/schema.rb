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

ActiveRecord::Schema.define(version: 20171203105358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commentaires", force: :cascade do |t|
    t.string   "titre"
    t.string   "libelle"
    t.integer  "user_id"
    t.integer  "voyage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_commentaires_on_user_id", using: :btree
    t.index ["voyage_id"], name: "index_commentaires_on_voyage_id", using: :btree
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "etat"
    t.integer  "voyageur_id"
    t.integer  "voyage_id"
    t.integer  "voyagiste_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["voyage_id"], name: "index_reservations_on_voyage_id", using: :btree
    t.index ["voyageur_id"], name: "index_reservations_on_voyageur_id", using: :btree
    t.index ["voyagiste_id"], name: "index_reservations_on_voyagiste_id", using: :btree
  end

  create_table "trajets", force: :cascade do |t|
    t.datetime "date"
    t.string   "lieux_depart"
    t.string   "lieux_arrivee"
    t.string   "etat"
    t.string   "nombre_places"
    t.string   "nombre_valises"
    t.string   "heure_depart"
    t.string   "heure_arivee"
    t.string   "frequence"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username"
    t.string   "nom"
    t.string   "prenom"
    t.string   "telephone"
    t.string   "identite"
    t.string   "type_identite"
    t.string   "nationalite"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  create_table "voitures", force: :cascade do |t|
    t.string   "matricule"
    t.string   "marque"
    t.string   "modele"
    t.integer  "annee"
    t.boolean  "climatisation"
    t.integer  "nombre_places"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_voitures_on_user_id", using: :btree
  end

  create_table "voyages", force: :cascade do |t|
    t.string   "lieux_depart"
    t.string   "lieux_arrivee"
    t.integer  "tarif"
    t.string   "monnaie"
    t.boolean  "peage"
    t.string   "etat"
    t.datetime "heure_depart"
    t.datetime "heure_arrivee"
    t.integer  "voyagiste_id"
    t.integer  "trajet_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["trajet_id"], name: "index_voyages_on_trajet_id", using: :btree
    t.index ["voyagiste_id"], name: "index_voyages_on_voyagiste_id", using: :btree
  end

  create_table "voyageurs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "voyage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_voyageurs_on_user_id", using: :btree
    t.index ["voyage_id"], name: "index_voyageurs_on_voyage_id", using: :btree
  end

  create_table "voyagistes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "voiture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_voyagistes_on_user_id", using: :btree
    t.index ["voiture_id"], name: "index_voyagistes_on_voiture_id", using: :btree
  end

  add_foreign_key "commentaires", "users"
  add_foreign_key "commentaires", "voyages"
  add_foreign_key "reservations", "voyages"
  add_foreign_key "reservations", "voyageurs"
  add_foreign_key "reservations", "voyagistes"
  add_foreign_key "voitures", "users"
  add_foreign_key "voyages", "trajets"
  add_foreign_key "voyages", "voyagistes"
  add_foreign_key "voyageurs", "users"
  add_foreign_key "voyageurs", "voyages"
  add_foreign_key "voyagistes", "users"
  add_foreign_key "voyagistes", "voitures"
end
