class CityController < ApplicationController
  before_action :city_params, only: [:show]

  def index
  end

  def show
  end

  private
    def city_params
      @city = City.find(params[:id])
    end
    
end
