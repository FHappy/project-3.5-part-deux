class CityController < ApplicationController
  before_action :city_params, only: [:show]

  def index
  end

  def show
    @posts = @city.posts.order('created_at DESC')
  end

  private
    def city_params
      @city = City.friendly.find(params[:city_id])
      # @city = City.find()
    end
    
end
