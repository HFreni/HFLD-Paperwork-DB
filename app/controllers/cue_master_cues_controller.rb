# frozen_string_literal: true

# noinspection ALL
class CueMasterCuesController < ApplicationController
  before_action :set_cue_master_cue, only: %i[show edit update destroy]

  # GET /cue_master_cues
  # GET /cue_master_cues.json
  def index
    @cue_master_cues = CueMasterCue.all
  end

  # GET /cue_master_cues/1
  # GET /cue_master_cues/1.json
  def show; end

  # GET /cue_master_cues/new
  def new
    @cue_master_cue = CueMasterCue.new
  end

  # GET /cue_master_cues/1/edit
  def edit; end

  # POST /cue_master_cues
  # POST /cue_master_cues.json
  def create
    @cue_master_cue = CueMasterCue.new(cue_master_cue_params)

    respond_to do |format|
      if @cue_master_cue.save
        format.html { redirect_to @cue_master_cue, notice: 'Cue master cue was successfully created.' }
        format.json { render :show, status: :created, location: @cue_master_cue }
      else
        format.html { render :new }
        format.json { render json: @cue_master_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cue_master_cues/1
  # PATCH/PUT /cue_master_cues/1.json
  def update
    respond_to do |format|
      if @cue_master_cue.update(cue_master_cue_params)
        format.html { redirect_to @cue_master_cue, notice: 'Cue master cue was successfully updated.' }
        format.json { render :show, status: :ok, location: @cue_master_cue }
      else
        format.html { render :edit }
        format.json { render json: @cue_master_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cue_master_cues/1
  # DELETE /cue_master_cues/1.json
  def destroy
    @cue_master_cue.destroy
    respond_to do |format|
      format.html { redirect_to cue_master_cues_url, notice: 'Cue master cue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cue_master_cue
    @cue_master_cue = CueMasterCue.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cue_master_cue_params
    params.require(:cue_master_cue).permit(:references, :references)
  end
end
