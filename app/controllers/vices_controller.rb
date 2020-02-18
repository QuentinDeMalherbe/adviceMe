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
    #TODO lié à l'user Quentin 17/02
    @vice = Vice.new(params.vice)
    if @vice.save
      redirect_to @vice
    else
      render :new
    end
  end


  private

  #a ajouter pour les methodes create et update.
  # def params_vice
  #   params.require(:controller).permit(:name, :category, :description, :disponibility, :address, :price )
  # end

end
