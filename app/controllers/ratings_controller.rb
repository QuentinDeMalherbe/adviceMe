class RatingsController < ApplicationController

  def create
    @vice = Vice.find(params[:vice_id])
    @rating = Rating.new(rating: params[:rating], user: current_user ,vice: @vice)
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
