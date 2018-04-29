class SpotCuesController < ApplicationController
  before_action :set_spot_cue, only: [:show, :edit, :update, :destroy]
  before_action :prepare_spotlight_list, only: %i[new edit create update]

  # GET /spot_cues
  # GET /spot_cues.json
  def index
    @spot_cues = SpotCue.all
  end

  # GET /spot_cues/1
  # GET /spot_cues/1.json
  def show
  end

  # GET /spot_cues/new
  def new
    @spot_cue = SpotCue.new
  end

  # GET /spot_cues/1/edit
  def edit
  end

  # POST /spot_cues
  # POST /spot_cues.json
  def create
    @spot_cue = SpotCue.new(spot_cue_params)

    respond_to do |format|
      if @spot_cue.save
        format.html { redirect_to @spot_cue, notice: 'Spot cue was successfully created.' }
        format.json { render :show, status: :created, location: @spot_cue }
      else
        format.html { render :new }
        format.json { render json: @spot_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spot_cues/1
  # PATCH/PUT /spot_cues/1.json
  def update
    respond_to do |format|
      if @spot_cue.update(spot_cue_params)
        format.html { redirect_to @spot_cue, notice: 'Spot cue was successfully updated.' }
        format.json { render :show, status: :ok, location: @spot_cue }
      else
        format.html { render :edit }
        format.json { render json: @spot_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spot_cues/1
  # DELETE /spot_cues/1.json
  def destroy
    @spot_cue.destroy
    respond_to do |format|
      format.html { redirect_to spot_cues_url, notice: 'Spot cue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # matrix display
  def matrix
    @spot_cues = SpotCue.all.order(:number)

    @spotlights = []
    SpotCue.all.collect { |x|
      x.spotlights.each { |y|
        next if @spotlights.include? y
        @spotlights << y
      }
    }

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spot_cue
      @spot_cue = SpotCue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spot_cue_params
      params.require(:spot_cue).permit(:number, :light_cue_number, :cue_type, :name, :notes, spot_cue_spotlights_attributes: SpotCueSpotlight.attribute_names.map(&:to_sym).push(:_destroy))
    end

  # Build out a sorted list of all spotlights to be used in the form select boxes
  def prepare_spotlight_list
    @spotlights = Spotlight.all.order(:spotlight_name)
  end

end
