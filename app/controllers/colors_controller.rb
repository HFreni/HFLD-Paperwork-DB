class ColorsController < ApplicationController
  def show
      @spotlight = Color.find(params[:id])
  end

  def new
  end

  def create
      @spotlight = Color.new(spotlight_params)

      @spotlight.save
      redirect_to @spotlight
  end

  private
      def spotlight_params
          params.require(:spotlight).permit(:name,:notes)
      end
end
