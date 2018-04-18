# frozen_string_literal: true

# noinspection ALL
class SpotlightModelsController < ApplicationController
  before_action :set_spotlight_model, only: %i[show edit update destroy]

  # GET /spotlight_models
  # GET /spotlight_models.json
  def index
    @spotlight_models = SpotlightModel.all
  end

  # GET /spotlight_models/1
  # GET /spotlight_models/1.json
  def show; end

  # GET /spotlight_models/new
  def new
    @spotlight_model = SpotlightModel.new
  end

  # GET /spotlight_models/1/edit
  def edit; end

  # POST /spotlight_models
  # POST /spotlight_models.json
  def create
    @spotlight_model = SpotlightModel.new(spotlight_model_params)

    respond_to do |format|
      if @spotlight_model.save
        format.html { redirect_to @spotlight_model, notice: 'Spotlight model was successfully created.' }
        format.json { render :show, status: :created, location: @spotlight_model }
      else
        format.html { render :new }
        format.json { render json: @spotlight_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotlight_models/1
  # PATCH/PUT /spotlight_models/1.json
  def update
    respond_to do |format|
      if @spotlight_model.update(spotlight_model_params)
        format.html { redirect_to @spotlight_model, notice: 'Spotlight model was successfully updated.' }
        format.json { render :show, status: :ok, location: @spotlight_model }
      else
        format.html { render :edit }
        format.json { render json: @spotlight_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotlight_models/1
  # DELETE /spotlight_models/1.json
  def destroy
    @spotlight_model.destroy
    respond_to do |format|
      format.html { redirect_to spotlight_models_url, notice: 'Spotlight model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spotlight_model
    @spotlight_model = SpotlightModel.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def spotlight_model_params
    params.require(:spotlight_model).permit(:spotlight_name, :spotlight_weight, :manufacturer_id)
  end
end
