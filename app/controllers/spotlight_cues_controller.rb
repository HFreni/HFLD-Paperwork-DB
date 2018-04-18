# frozen_string_literal: true

# noinspection ALL
class SpotlightCuesController < ApplicationController
  before_action :set_spotlight_cue, only: %i[show edit update destroy]

  # GET /spotlight_cues
  # GET /spotlight_cues.json
  def index
    @spotlight_cues = SpotlightCue.all
  end

  # GET /spotlight_cues/1
  # GET /spotlight_cues/1.json
  def show; end

  # GET /spotlight_cues/new
  def new
    @spotlight_cue = SpotlightCue.new
  end

  # GET /spotlight_cues/1/edit
  def edit; end

  # POST /spotlight_cues
  # POST /spotlight_cues.json
  def create
    @spotlight_cue = SpotlightCue.new(spotlight_cue_params)

    respond_to do |format|
      if @spotlight_cue.save
        format.html { redirect_to @spotlight_cue, notice: 'Spotlight cue was successfully created.' }
        format.json { render :show, status: :created, location: @spotlight_cue }
      else
        format.html { render :new }
        format.json { render json: @spotlight_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotlight_cues/1
  # PATCH/PUT /spotlight_cues/1.json
  def update
    respond_to do |format|
      if @spotlight_cue.update(spotlight_cue_params)
        format.html { redirect_to @spotlight_cue, notice: 'Spotlight cue was successfully updated.' }
        format.json { render :show, status: :ok, location: @spotlight_cue }
      else
        format.html { render :edit }
        format.json { render json: @spotlight_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotlight_cues/1
  # DELETE /spotlight_cues/1.json
  def destroy
    @spotlight_cue.destroy
    respond_to do |format|
      format.html { redirect_to spotlight_cues_url, notice: 'Spotlight cue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spotlight_cue
    @spotlight_cue = SpotlightCue.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def spotlight_cue_params
    params.require(:spotlight_cue).permit(:color_id, :size_id, :intensity_id, :action_id, :time, :description)
  end
end
