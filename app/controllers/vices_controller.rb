class VicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    @vices = Vice.geocoded
      if params[:query].present?
        @vices = Vice.geocoded.global_search(params[:query])
      end
      if params[:name_query].present?
        @vices = Vice.geocoded.global_search(params[:name_query])
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

  def show
    @vice = Vice.geocoded.find(params[:id])
    @markers =
      [{
        lat: @vice.latitude,
        lng: @vice.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { vice: @vice }),
        image_url: helpers.cl_image_path(@vice.user.photo.key)
      }]
  end

  def new
    @vice = Vice.new
  end

  def create
    @vice = Vice.new(params_vice)
    @vice.user = current_user
    if @vice.save
      redirect_to @vice
    else
      render :new
    end
  end

  def destroy
    @vice = Vice.find(params[:id])
    @vice.destroy
    redirect_to user_path
  end


  private

  def params_vice
    params.require(:vice).permit(:name, :category, :description, :address, :price, :starting_date, :ending_date, :photo )
  end
end
