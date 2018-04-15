class ColorsController < ApplicationController
  def index
    @color = Color.all
  end
  def show
      @color = Color.find(params[:id])
  end

  def new

  end

  def create
      @color = Color.new(color_params)

      @color.save
      redirect_to @color
  end

  private
      def color_params
          params.require(:color).permit(:id,:gel_num,:gel_name,:gel_hex,:manufacturer_id)
      end
end
