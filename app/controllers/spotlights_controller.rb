class SpotlightsController < ApplicationController
  before_action :set_spotlight, only: [:show, :edit, :update, :destroy]
  before_action :prepare_color_list, only: [:new, :edit, :update]
  before_action :prepare_people_list, only: [:new, :edit, :update]
  before_action :prepare_position_list, only: [:new, :edit, :update]

  # GET /spotlights
  # GET /spotlights.json
  def index
    @spotlights = Spotlight.all.order(:id)
  end

  # GET /spotlights/1
  # GET /spotlights/1.json
  def show
  end

  # GET /spotlights/new
  def new
    @spotlight = Spotlight.new
  end

  # GET /spotlights/1/edit
  def edit
  end

  # POST /spotlights
  # POST /spotlights.json
  def create
    @spotlight = Spotlight.new(spotlight_params)

    respond_to do |format|
      if @spotlight.save
        format.html { redirect_to @spotlight, notice: 'Spotlight was successfully created.' }
        format.json { render :show, status: :created, location: @spotlight }
      else
        format.html { render :new }
        format.json { render json: @spotlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotlights/1
  # PATCH/PUT /spotlights/1.json
  def update
    respond_to do |format|
      if @spotlight.update(spotlight_params)
        format.html { redirect_to @spotlight, notice: 'Spotlight was successfully updated.' }
        format.json { render :show, status: :ok, location: @spotlight }
      else
        format.html { render :edit }
        format.json { render json: @spotlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotlights/1
  # DELETE /spotlights/1.json
  def destroy
    @spotlight.destroy
    respond_to do |format|
      format.html { redirect_to spotlights_url, notice: 'Spotlight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spotlight
      @spotlight = Spotlight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spotlight_params
      params.require(:spotlight).permit(:spotlight_name, :operator_id, :position_id, :spotlight_notes, :model_id, {color_frames_attributes: ColorFrame.attribute_names.map(&:to_sym).push(:_destroy)} )
    end
    
    # Build out a sorted list of all gel colors to be used in the form select boxes
    def prepare_color_list
      @colors = Color.all.order(:manufacturer_id,:gel_num)
    end

    # Build out a sorted list of all people to be used in the form select boxes
    def prepare_people_list
      @people = Person.all.order(:id, :person_lname)
    end

    # Build out a sorted list of all positions to be used in the form select boxes
    def prepare_position_list
      @position = SpotlightPosition.all.order(:id, :position_name)
    end
end
