class CityController < ApplicationController
  before_action :city_params, only: [:show]

  def index
  end

  def show
    @posts = @city.posts.order('created_at DESC')
  end

  private
    def city_params
      @city = City.find(params[:city_id])
    end
    
end
