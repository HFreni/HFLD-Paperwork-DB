class SpotlightsController < ApplicationController
    def show
        @spotlight = Spotlight.find(params[:id])
    end

    def new
    end

    def create
        @spotlight = Spotlight.new(spotlight_params)

        @spotlight.save
        redirect_to @spotlight
    end

    private
        def spotlight_params
            params.require(:spotlight).permit(:name,:notes)
        end
end
