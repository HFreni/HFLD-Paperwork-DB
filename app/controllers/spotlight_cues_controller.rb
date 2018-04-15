class SpotlightCuesController < ApplicationController
  def index
    @spotlightcues = SpotlightCues.all
  end
end
