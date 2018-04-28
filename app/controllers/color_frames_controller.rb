# frozen_string_literal: true

# noinspection ALL,RailsChecklist01
class ColorFramesController < ApplicationController
  before_action :set_color_frame, only: %i[show edit update destroy]
  before_action :prepare_color_list, only: %i[new edit create update]
  before_action :prepare_spotlight_list, only: %i[new edit create update]

  # GET /color_frames
  # GET /color_frames.json
  def index
    @color_frames = ColorFrame.all
  end

  # GET /color_frames/1
  # GET /color_frames/1.json
  def show; end

  # GET /color_frames/new
  def new
    @color_frame = ColorFrame.new
  end

  # GET /color_frames/1/edit
  def edit; end

  # POST /color_frames
  # POST /color_frames.json
  def create
    @color_frame = ColorFrame.new(color_frame_params)

    respond_to do |format|
      if @color_frame.save
        format.html { redirect_to @color_frame, notice: 'Color frame was successfully created.' }
        format.json { render :show, status: :created, location: @color_frame }
      else
        format.html { render :new }
        format.json { render json: @color_frame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /color_frames/1
  # PATCH/PUT /color_frames/1.json
  def update
    respond_to do |format|
      if @color_frame.update(color_frame_params)
        format.html { redirect_to @color_frame, notice: 'Color frame was successfully updated.' }
        format.json { render :show, status: :ok, location: @color_frame }
      else
        format.html { render :edit }
        format.json { render json: @color_frame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /color_frames/1
  # DELETE /color_frames/1.json
  def destroy
    @color_frame.destroy
    respond_to do |format|
      format.html { redirect_to color_frames_url, notice: 'Color frame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_color_frame
    @color_frame = ColorFrame.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def color_frame_params
    params.require(:color_frame).permit(:color_id, :spotlight_id, :frame_position)
  end

  # Build out a sorted list of all gel colors to be used in the form select boxes
  def prepare_color_list
    @colors = Color.all.order(:manufacturer_id, :gel_num)
  end

  # Build out a sorted list of all spotlights to be used in the form select boxes
  def prepare_spotlight_list
    @spotlights = Spotlight.all.order(:spotlight_name)
  end

end

