class RatingsController < ApplicationController

  def create
    @rating = Rating.new(rating: params[:rating], user_id: current_user.id ,vice_id: params[:vice_id])
    @user = current_user
    if @rating.save
      respond_to do |format|
        format.html { redirect_to user_path(current_user) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render '/users/show' }
        format.js  # <-- idem
      end
    end
    # redirect_to user_path(current_user)
  end


end
