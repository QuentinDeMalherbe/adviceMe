class RatingsController < ApplicationController

  def create
    @rating = Rating.create(rating: params[:rating], user_id: current_user.id ,vice_id: params[:vice_id])
    redirect_to user_path(current_user)
  end


end
