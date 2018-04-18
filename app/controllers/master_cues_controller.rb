# frozen_string_literal: true

# noinspection ALL
class MasterCuesController < ApplicationController
  before_action :set_master_cue, only: %i[show edit update destroy]

  # GET /master_cues
  # GET /master_cues.json
  def index
    @master_cues = MasterCue.all
  end

  # GET /master_cues/1
  # GET /master_cues/1.json
  def show; end

  # GET /master_cues/new
  def new
    @master_cue = MasterCue.new
  end

  # GET /master_cues/1/edit
  def edit; end

  # POST /master_cues
  # POST /master_cues.json
  def create
    @master_cue = MasterCue.new(master_cue_params)

    respond_to do |format|
      if @master_cue.save
        format.html { redirect_to @master_cue, notice: 'Master cue was successfully created.' }
        format.json { render :show, status: :created, location: @master_cue }
      else
        format.html { render :new }
        format.json { render json: @master_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_cues/1
  # PATCH/PUT /master_cues/1.json
  def update
    respond_to do |format|
      if @master_cue.update(master_cue_params)
        format.html { redirect_to @master_cue, notice: 'Master cue was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_cue }
      else
        format.html { render :edit }
        format.json { render json: @master_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_cues/1
  # DELETE /master_cues/1.json
  def destroy
    @master_cue.destroy
    respond_to do |format|
      format.html { redirect_to master_cues_url, notice: 'Master cue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_master_cue
    @master_cue = MasterCue.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def master_cue_params
    params.require(:master_cue).permit(:lx_cue, :spot_cue, :cue_info, :scene, :song)
  end
end
