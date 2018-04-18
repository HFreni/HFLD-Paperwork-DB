# frozen_string_literal: true

# noinspection ALL
class SpotlightActionsController < ApplicationController
  before_action :set_spotlight_action, only: %i[show edit update destroy]

  # GET /spotlight_actions
  # GET /spotlight_actions.json
  def index
    @spotlight_actions = SpotlightAction.all
  end

  # GET /spotlight_actions/1
  # GET /spotlight_actions/1.json
  def show; end

  # GET /spotlight_actions/new
  def new
    @spotlight_action = SpotlightAction.new
  end

  # GET /spotlight_actions/1/edit
  def edit; end

  # POST /spotlight_actions
  # POST /spotlight_actions.json
  def create
    @spotlight_action = SpotlightAction.new(spotlight_action_params)

    respond_to do |format|
      if @spotlight_action.save
        format.html { redirect_to @spotlight_action, notice: 'Spotlight action was successfully created.' }
        format.json { render :show, status: :created, location: @spotlight_action }
      else
        format.html { render :new }
        format.json { render json: @spotlight_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotlight_actions/1
  # PATCH/PUT /spotlight_actions/1.json
  def update
    respond_to do |format|
      if @spotlight_action.update(spotlight_action_params)
        format.html { redirect_to @spotlight_action, notice: 'Spotlight action was successfully updated.' }
        format.json { render :show, status: :ok, location: @spotlight_action }
      else
        format.html { render :edit }
        format.json { render json: @spotlight_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotlight_actions/1
  # DELETE /spotlight_actions/1.json
  def destroy
    @spotlight_action.destroy
    respond_to do |format|
      format.html { redirect_to spotlight_actions_url, notice: 'Spotlight action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spotlight_action
    @spotlight_action = SpotlightAction.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def spotlight_action_params
    params.require(:spotlight_action).permit(:name, :image)
  end
end
