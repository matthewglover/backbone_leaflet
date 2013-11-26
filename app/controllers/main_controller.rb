class MainController < ApplicationController
  def index
    @factual = FactualApi.new
    @factual.getPlacesNear('restaurant', 51.5265809, -0.0584141)
  end

  def search
    latitude = params['latitude']
    longitude = params['longitude']
    @factual = FactualApi.new
    @factual.getPlacesNear('restaurant', latitude, longitude)

    respond_to do |format|
      format.json { render json: @factual.rows }
    end
  end
end
