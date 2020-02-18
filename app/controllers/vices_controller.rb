class VicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @vices = Vice.all
  end

  def show
    @vice = Vice.find(params[:id])
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
