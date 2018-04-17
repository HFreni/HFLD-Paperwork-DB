class SpotlightIntensitiesController < ApplicationController
  before_action :set_spotlight_intensity, only: [:show, :edit, :update, :destroy]

  # GET /spotlight_intensities
  # GET /spotlight_intensities.json
  def index
    @spotlight_intensities = SpotlightIntensity.all
  end

  # GET /spotlight_intensities/1
  # GET /spotlight_intensities/1.json
  def show
  end

  # GET /spotlight_intensities/new
  def new
    @spotlight_intensity = SpotlightIntensity.new
  end

  # GET /spotlight_intensities/1/edit
  def edit
  end

  # POST /spotlight_intensities
  # POST /spotlight_intensities.json
  def create
    @spotlight_intensity = SpotlightIntensity.new(spotlight_intensity_params)

    respond_to do |format|
      if @spotlight_intensity.save
        format.html { redirect_to @spotlight_intensity, notice: 'Spotlight intensity was successfully created.' }
        format.json { render :show, status: :created, location: @spotlight_intensity }
      else
        format.html { render :new }
        format.json { render json: @spotlight_intensity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotlight_intensities/1
  # PATCH/PUT /spotlight_intensities/1.json
  def update
    respond_to do |format|
      if @spotlight_intensity.update(spotlight_intensity_params)
        format.html { redirect_to @spotlight_intensity, notice: 'Spotlight intensity was successfully updated.' }
        format.json { render :show, status: :ok, location: @spotlight_intensity }
      else
        format.html { render :edit }
        format.json { render json: @spotlight_intensity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotlight_intensities/1
  # DELETE /spotlight_intensities/1.json
  def destroy
    @spotlight_intensity.destroy
    respond_to do |format|
      format.html { redirect_to spotlight_intensities_url, notice: 'Spotlight intensity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spotlight_intensity
      @spotlight_intensity = SpotlightIntensity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spotlight_intensity_params
      params.require(:spotlight_intensity).permit(:name, :intensity)
    end
end
