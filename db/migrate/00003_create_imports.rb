class CreateImports < ActiveRecord::Migration[7.2]
  def change
    create_table :imports do |t|
      t.string :year
      t.string :month
      t.string :categoria
      t.string :cognome
      t.string :cognome_acquisito
      t.string :nome
      t.string :consenso1
      t.string :consenso2
      t.string :consenso3
      t.string :consenso4
      t.string :documento_privacy
      t.string :codice_fiscale
      t.string :sesso
      t.string :altro_sesso
      t.string :stato_civile
      t.date :data_nascita
      t.date :data_decesso
      t.string :luogo_nascita
      t.string :titolo_studio
      t.string :telefono
      t.string :cellulare
      t.text :email
      t.text :indirizzo
      t.string :frazione
      t.string :localita_postale
      t.string :cap
      t.string :comune
      t.string :provincia
      t.string :nazionalita
      t.string :tipologia_status
      t.string :tipologia_rapporto_lavoro
      t.date :data_inizio_lavoro
      t.date :data_fine_lavoro
      t.string :motivo_cessazione_lavoro
      t.string :tipologia_iscrizione
      t.string :tipologia_delega
      t.date :data_inizio_iscrizione
      t.date :data_fine_iscrizione
      t.date :data_inizio_trattenuta
      t.date :data_fine_trattenuta
      t.string :utente_modifica
      t.timestamp :data_modifica
      t.string :tipologia_versamento
      t.string :motivo_cessazione_iscrizione
      t.string :provvisoria
      t.string :status_confermato_da_nastro
      t.string :concomitante_spi_anno
      t.string :tipologia_azienda
      t.text :ragione_sociale_azienda
      t.string :codice_fiscale_azienda
      t.string :partita_iva_azienda
      t.text :nome_unita_locale
      t.string :condizione_unita_locale
      t.text :indirizzo_unita_locale
      t.string :cap_unita_locale
      t.string :comune_unita_locale
      t.string :provincia_unita_locale
      t.string :telefono_azienda
      t.text :email_azienda
      t.text :ragione_sociale_azienda_fruitrice
      t.text :nome_unita_locale_fruitrice
      t.string :funzionario
      t.string :condizione_status
      t.text :contratto_nazionale
      t.text :settore_lavorativo
      t.string :codice_azzonamento_completo
      t.string :descrizione_azzonamento_completo
      t.string :codice_azzonamento_regionale
      t.string :descrizione_azzonamento_regionale
      t.string :codice_azzonamento_comprensoriale
      t.string :descrizione_azzonamento_comprensoriale
      t.text :struttura_attivazione_iscrizione
      t.text :evento_attivazione_iscrizione
      t.string :stampa_tessera
      t.string :anno_stampa
      t.date :data_contabilizzazione_tessera
      t.text :descrizione_reparto
      t.string :qualifica
      t.string :livello
      t.string :part_time
    end
  end
end