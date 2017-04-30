class BondsController < ApplicationController

  def create
    binding.pry
    user = User.find(params[:followed_id])
    current_user.follow(user)
    redirect_to root
  end
  
  def destroy
    binding.pry
    user = Bond.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to root
  end
  
end
