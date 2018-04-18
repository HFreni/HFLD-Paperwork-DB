# frozen_string_literal: true

# noinspection ALL
class SpotlightSizesController < ApplicationController
  before_action :set_spotlight_size, only: %i[show edit update destroy]

  # GET /spotlight_sizes
  # GET /spotlight_sizes.json
  def index
    @spotlight_sizes = SpotlightSize.all
  end

  # GET /spotlight_sizes/1
  # GET /spotlight_sizes/1.json
  def show; end

  # GET /spotlight_sizes/new
  def new
    @spotlight_size = SpotlightSize.new
  end

  # GET /spotlight_sizes/1/edit
  def edit; end

  # POST /spotlight_sizes
  # POST /spotlight_sizes.json
  def create
    @spotlight_size = SpotlightSize.new(spotlight_size_params)

    respond_to do |format|
      if @spotlight_size.save
        format.html { redirect_to @spotlight_size, notice: 'Spotlight size was successfully created.' }
        format.json { render :show, status: :created, location: @spotlight_size }
      else
        format.html { render :new }
        format.json { render json: @spotlight_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotlight_sizes/1
  # PATCH/PUT /spotlight_sizes/1.json
  def update
    respond_to do |format|
      if @spotlight_size.update(spotlight_size_params)
        format.html { redirect_to @spotlight_size, notice: 'Spotlight size was successfully updated.' }
        format.json { render :show, status: :ok, location: @spotlight_size }
      else
        format.html { render :edit }
        format.json { render json: @spotlight_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotlight_sizes/1
  # DELETE /spotlight_sizes/1.json
  def destroy
    @spotlight_size.destroy
    respond_to do |format|
      format.html { redirect_to spotlight_sizes_url, notice: 'Spotlight size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spotlight_size
    @spotlight_size = SpotlightSize.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def spotlight_size_params
    params.require(:spotlight_size).permit(:name, :description, :image)
  end
end
