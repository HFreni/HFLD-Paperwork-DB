class SpotCuesSpotlightsController < ApplicationController
  before_action :set_spot_cues_spotlight, only: [:show, :edit, :update, :destroy]
  before_action :prepare_spot_cue_list, only: [:new, :edit, :create, :update]
  before_action :prepare_spotlight_list, only: [:new, :edit, :create, :update]

  # GET /spot_cues_spotlights
  # GET /spot_cues_spotlights.json
  def index
    @spot_cues_spotlights = SpotCuesSpotlight.all
  end

  # GET /spot_cues_spotlights/1
  # GET /spot_cues_spotlights/1.json
  def show
  end

  # GET /spot_cues_spotlights/new
  def new
    @spot_cues_spotlight = SpotCuesSpotlight.new
  end

  # GET /spot_cues_spotlights/1/edit
  def edit
  end

  # POST /spot_cues_spotlights
  # POST /spot_cues_spotlights.json
  def create
    @spot_cues_spotlight = SpotCuesSpotlight.new(spot_cues_spotlight_params)

    respond_to do |format|
      if @spot_cues_spotlight.save
        format.html { redirect_to @spot_cues_spotlight, notice: 'Spot cues spotlight was successfully created.' }
        format.json { render :show, status: :created, location: @spot_cues_spotlight }
      else
        format.html { render :new }
        format.json { render json: @spot_cues_spotlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spot_cues_spotlights/1
  # PATCH/PUT /spot_cues_spotlights/1.json
  def update
    respond_to do |format|
      if @spot_cues_spotlight.update(spot_cues_spotlight_params)
        format.html { redirect_to @spot_cues_spotlight, notice: 'Spot cues spotlight was successfully updated.' }
        format.json { render :show, status: :ok, location: @spot_cues_spotlight }
      else
        format.html { render :edit }
        format.json { render json: @spot_cues_spotlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spot_cues_spotlights/1
  # DELETE /spot_cues_spotlights/1.json
  def destroy
    @spot_cues_spotlight.destroy
    respond_to do |format|
      format.html { redirect_to spot_cues_spotlights_url, notice: 'Spot cues spotlight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spot_cues_spotlight
      @spot_cues_spotlight = SpotCuesSpotlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spot_cues_spotlight_params
      params.require(:spot_cues_spotlight).permit(:spot_cue_id, :spotlight_id, :size, :intensity, :action, :time, :notes)
    end

  # Build out a sorted list of all spotlights to be used in the form select boxes
  def prepare_spotlight_list
    @spotlights = Spotlight.all.order(:spotlight_name)
  end

  # Build out a sorted list of all spot cues to be used in the form select boxes
  def prepare_spot_cue_list
    @spot_cues = SpotCue.all.order(:number)
  end

end
