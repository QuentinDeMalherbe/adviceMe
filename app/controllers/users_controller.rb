class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @vice = Vice.all
    @users = User.all.page(params[:page])
    #filtrer sur les users ayant un vice
  end

  def show
    @user = User.find(params[:id])
    @vices = @user.vices.geocoded.page(params[:page])
      if params[:query].present?
        @vices = Vice.geocoded.page(params[:page]).global_search(params[:query])
      end
      if params[:name_query].present?
        @vices = Vice.geocoded.page(params[:page]).global_search(params[:name_query])
      end

    @markers = @vices.map do |vice|
      {
        lat: vice.latitude,
        lng: vice.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { vice: vice }),
        image_url: helpers.cl_image_path(vice.user.photo.key)
      }
    end
  end
end
