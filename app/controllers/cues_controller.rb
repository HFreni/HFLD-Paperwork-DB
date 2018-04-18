# frozen_string_literal: true

# noinspection ALL
class CuesController < ApplicationController
  before_action :set_cue, only: %i[show edit update destroy]


  # GET /cues
  # GET /cues.json
  def index
    @cues = Cue.all
  end

  # GET /cues/1
  # GET /cues/1.json
  def show; end

  # GET /cues/new
  def new
    @cue = Cue.new
  end

  # GET /cues/1/edit
  def edit; end

  # POST /cues
  # POST /cues.json
  def create
    @cue = Cue.new(cue_params)

    respond_to do |format|
      if @cue.save
        format.html { redirect_to @cue, notice: 'Cue was successfully created.' }
        format.json { render :show, status: :created, location: @cue }
      else
        format.html { render :new }
        format.json { render json: @cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cues/1
  # PATCH/PUT /cues/1.json
  def update
    respond_to do |format|
      if @cue.update(cue_params)
        format.html { redirect_to @cue, notice: 'Cue was successfully updated.' }
        format.json { render :show, status: :ok, location: @cue }
      else
        format.html { render :edit }
        format.json { render json: @cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cues/1
  # DELETE /cues/1.json
  def destroy
    @cue.destroy
    respond_to do |format|
      format.html { redirect_to cues_url, notice: 'Cue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cue
    @cue = Cue.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cue_params
    params.require(:cue).permit(:lx_cue, :spot_cue, :cue_info, :scene, :song, cue_spotlight_attributes: CueSpotlight.attribute_names.map(&:to_sym).push(:_destroy))
  end
  
end
