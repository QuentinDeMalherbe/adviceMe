class VicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR user ILIKE :query OR address ILIKE :query"
      @vices = Vice.geocoded.where(sql_query, query: "%#{params[:query]}%")
    else
      @vices = Vice.geocoded
    end


    if params[:query].present?
      sql_query = " \
        vices.name @@ :query \
        OR vices.category @@ :query \
        OR vices.address @@ :query \
        OR users.first_name @@ :query \
        OR users.last_name @@ :query \
      "
      @vices = Vice.geocoded.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @vices = Vice.geocoded
    end

    # @vices = Vice.geocoded #returns flats with coordinates
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

  private

  def params_vice
    params.require(:vice).permit(:name, :category, :description, :address, :price, :starting_date, :ending_date, :photo )
  end
end
