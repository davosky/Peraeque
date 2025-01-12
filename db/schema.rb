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

ActiveRecord::Schema[7.2].define(version: 3) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "imports", force: :cascade do |t|
    t.string "year"
    t.string "month"
    t.string "categoria"
    t.string "cognome"
    t.string "cognome_acquisito"
    t.string "nome"
    t.string "consenso1"
    t.string "consenso2"
    t.string "consenso3"
    t.string "consenso4"
    t.string "documento_privacy"
    t.string "codice_fiscale"
    t.string "sesso"
    t.string "altro_sesso"
    t.string "stato_civile"
    t.date "data_nascita"
    t.date "data_decesso"
    t.string "luogo_nascita"
    t.string "titolo_studio"
    t.string "telefono"
    t.string "cellulare"
    t.text "email"
    t.text "indirizzo"
    t.string "frazione"
    t.string "localita_postale"
    t.string "cap"
    t.string "comune"
    t.string "provincia"
    t.string "nazionalita"
    t.string "tipologia_status"
    t.string "tipologia_rapporto_lavoro"
    t.date "data_inizio_lavoro"
    t.date "data_fine_lavoro"
    t.string "motivo_cessazione_lavoro"
    t.string "tipologia_iscrizione"
    t.string "tipologia_delega"
    t.date "data_inizio_iscrizione"
    t.date "data_fine_iscrizione"
    t.date "data_inizio_trattenuta"
    t.date "data_fine_trattenuta"
    t.string "utente_modifica"
    t.datetime "data_modifica", precision: nil
    t.string "tipologia_versamento"
    t.string "motivo_cessazione_iscrizione"
    t.string "provvisoria"
    t.string "status_confermato_da_nastro"
    t.string "concomitante_spi_anno"
    t.string "tipologia_azienda"
    t.text "ragione_sociale_azienda"
    t.string "codice_fiscale_azienda"
    t.string "partita_iva_azienda"
    t.text "nome_unita_locale"
    t.string "condizione_unita_locale"
    t.text "indirizzo_unita_locale"
    t.string "cap_unita_locale"
    t.string "comune_unita_locale"
    t.string "provincia_unita_locale"
    t.string "telefono_azienda"
    t.text "email_azienda"
    t.text "ragione_sociale_azienda_fruitrice"
    t.text "nome_unita_locale_fruitrice"
    t.string "funzionario"
    t.string "condizione_status"
    t.text "contratto_nazionale"
    t.text "settore_lavorativo"
    t.string "codice_azzonamento_completo"
    t.string "descrizione_azzonamento_completo"
    t.string "codice_azzonamento_regionale"
    t.string "descrizione_azzonamento_regionale"
    t.string "codice_azzonamento_comprensoriale"
    t.string "descrizione_azzonamento_comprensoriale"
    t.text "struttura_attivazione_iscrizione"
    t.text "evento_attivazione_iscrizione"
    t.string "stampa_tessera"
    t.string "anno_stampa"
    t.date "data_contabilizzazione_tessera"
    t.text "descrizione_reparto"
    t.string "qualifica"
    t.string "livello"
    t.string "part_time"
  end

  create_table "regionals", force: :cascade do |t|
    t.string "year"
    t.string "month"
    t.string "region"
    t.bigint "regional"
    t.bigint "gorizia"
    t.bigint "pordenone"
    t.bigint "trieste"
    t.bigint "udine"
    t.bigint "filcams"
    t.bigint "filctem"
    t.bigint "fillea"
    t.bigint "filt"
    t.bigint "fiom"
    t.bigint "fisac"
    t.bigint "flai"
    t.bigint "flc"
    t.bigint "fp"
    t.bigint "nidil"
    t.bigint "slc"
    t.bigint "spi"
    t.bigint "men"
    t.bigint "women"
    t.bigint "young"
    t.bigint "thirty"
    t.bigint "forty"
    t.bigint "fifty"
    t.bigint "sixty"
    t.bigint "seventy"
    t.bigint "eighty"
    t.bigint "highlander"
    t.bigint "delega"
    t.bigint "brevimanu"
    t.bigint "ordinaria"
    t.bigint "ordinariace"
    t.bigint "naspi"
    t.bigint "dsagricola"
    t.bigint "delegatesoro"
    t.bigint "concomitante"
    t.bigint "concomitantespianno"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "admin"
    t.boolean "supervisor"
    t.boolean "manager"
    t.boolean "regular"
    t.string "first_name"
    t.string "last_name"
    t.string "sex"
    t.string "region"
    t.string "province"
    t.string "institute"
    t.string "office"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end
end
