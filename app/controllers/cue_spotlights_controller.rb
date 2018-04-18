class CueSpotlightsController < ApplicationController
  before_action :set_cue_spotlight, only: [:show, :edit, :update, :destroy]

  # GET /cue_spotlights
  # GET /cue_spotlights.json
  def index
    @cue_spotlights = CueSpotlight.all
  end

  # GET /cue_spotlights/1
  # GET /cue_spotlights/1.json
  def show
  end

  # GET /cue_spotlights/new
  def new
    @cue_spotlight = CueSpotlight.new
  end

  # GET /cue_spotlights/1/edit
  def edit
  end

  # POST /cue_spotlights
  # POST /cue_spotlights.json
  def create
    @cue_spotlight = CueSpotlight.new(cue_spotlight_params)

    respond_to do |format|
      if @cue_spotlight.save
        format.html { redirect_to @cue_spotlight, notice: 'Cue spotlight was successfully created.' }
        format.json { render :show, status: :created, location: @cue_spotlight }
      else
        format.html { render :new }
        format.json { render json: @cue_spotlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cue_spotlights/1
  # PATCH/PUT /cue_spotlights/1.json
  def update
    respond_to do |format|
      if @cue_spotlight.update(cue_spotlight_params)
        format.html { redirect_to @cue_spotlight, notice: 'Cue spotlight was successfully updated.' }
        format.json { render :show, status: :ok, location: @cue_spotlight }
      else
        format.html { render :edit }
        format.json { render json: @cue_spotlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cue_spotlights/1
  # DELETE /cue_spotlights/1.json
  def destroy
    @cue_spotlight.destroy
    respond_to do |format|
      format.html { redirect_to cue_spotlights_url, notice: 'Cue spotlight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cue_spotlight
      @cue_spotlight = CueSpotlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cue_spotlight_params
      params.require(:cue_spotlight).permit(:references, :references)
    end
end
