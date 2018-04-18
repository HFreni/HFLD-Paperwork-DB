# frozen_string_literal: true

# noinspection ALL
class SpotlightPositionsController < ApplicationController
  before_action :set_spotlight_position, only: %i[show edit update destroy]

  # GET /spotlight_positions
  # GET /spotlight_positions.json
  def index
    @spotlight_positions = SpotlightPosition.all
  end

  # GET /spotlight_positions/1
  # GET /spotlight_positions/1.json
  def show; end

  # GET /spotlight_positions/new
  def new
    @spotlight_position = SpotlightPosition.new
  end

  # GET /spotlight_positions/1/edit
  def edit; end

  # POST /spotlight_positions
  # POST /spotlight_positions.json
  def create
    @spotlight_position = SpotlightPosition.new(spotlight_position_params)

    respond_to do |format|
      if @spotlight_position.save
        format.html { redirect_to @spotlight_position, notice: 'Spotlight position was successfully created.' }
        format.json { render :show, status: :created, location: @spotlight_position }
      else
        format.html { render :new }
        format.json { render json: @spotlight_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotlight_positions/1
  # PATCH/PUT /spotlight_positions/1.json
  def update
    respond_to do |format|
      if @spotlight_position.update(spotlight_position_params)
        format.html { redirect_to @spotlight_position, notice: 'Spotlight position was successfully updated.' }
        format.json { render :show, status: :ok, location: @spotlight_position }
      else
        format.html { render :edit }
        format.json { render json: @spotlight_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotlight_positions/1
  # DELETE /spotlight_positions/1.json
  def destroy
    @spotlight_position.destroy
    respond_to do |format|
      format.html { redirect_to spotlight_positions_url, notice: 'Spotlight position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spotlight_position
    @spotlight_position = SpotlightPosition.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def spotlight_position_params
    params.require(:spotlight_position).permit(:position_name)
  end
end
