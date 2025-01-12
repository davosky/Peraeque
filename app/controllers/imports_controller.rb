class ImportsController < ApplicationController
  before_action :set_import, only: %i[ show edit update destroy ]

  # GET /imports or /imports.json
  def index
    @imports = Import.all
  end

  # GET /imports/1 or /imports/1.json
  def show
  end

  # GET /imports/new
  def new
    @import = Import.new
  end

  # GET /imports/1/edit
  def edit
  end

  # POST /imports or /imports.json
  def create
    @import = Import.new(import_params)

    respond_to do |format|
      if @import.save
        format.html { redirect_to @import, notice: "Import was successfully created." }
        format.json { render :show, status: :created, location: @import }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @import.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imports/1 or /imports/1.json
  def update
    respond_to do |format|
      if @import.update(import_params)
        format.html { redirect_to @import, notice: "Import was successfully updated." }
        format.json { render :show, status: :ok, location: @import }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imports/1 or /imports/1.json
  def destroy
    @import.destroy!

    respond_to do |format|
      format.html { redirect_to imports_path, status: :see_other, notice: "Import was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import
      @import = Import.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def import_params
      params.require(:import).permit(:year, :month, :categoria, :cognome, :cognome_acquisito, :nome, :consenso1, :consenso2, :consenso3, :consenso4, :documento_privacy, :codice_fiscale, :sesso, :altro_sesso, :stato_civile, :data_nascita, :data_decesso, :luogo_nascita, :titolo_studio, :telefono, :cellulare, :email, :indirizzo, :frazione, :localita_postale, :cap, :comune, :provincia, :nazionalita, :tipologia_status, :tipologia_rapporto_lavoro, :data_inizio_lavoro, :data_fine_lavoro, :motivo_cessazione_lavoro, :tipologia_iscrizione, :tipologia_delega, :data_inizio_iscrizione, :data_fine_iscrizione, :data_inizio_trattenuta, :data_fine_trattenuta, :utente_modifica, :data_modifica, :tipologia_versamento, :motivo_cessazione_iscrizione, :provvisoria, :status_confermato_da_nastro, :concomitante_spi_anno, :tipologia_azienda, :ragione_sociale_azienda, :codice_fiscale_azienda, :partita_iva_azienda, :nome_unita_locale, :condizione_unita_locale, :indirizzo_unita_locale, :cap_unita_locale, :comune_unita_locale, :provincia_unita_locale, :telefono_azienda, :email_azienda, :ragione_sociale_azienda_fruitrice, :nome_unita_locale_fruitrice, :funzionario, :condizione_status, :contratto_nazionale, :settore_lavorativo, :codice_azzonamento_completo, :descrizione_azzonamento_completo, :codice_azzonamento_regionale, :descrizione_azzonamento_regionale, :codice_azzonamento_comprensoriale, :descrizione_azzonamento_comprensoriale, :struttura_attivazione_iscrizione, :evento_attivazione_iscrizione, :stampa_tessera, :anno_stampa, :data_contabilizzazione_tessera, :descrizione_reparto, :qualifica, :livello, :part_time)
    end
end
