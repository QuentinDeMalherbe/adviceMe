class VicesController < ApplicationController

  def index
    @vices = Vice.all
  end

  def show
    @vice = Vice.find(params[:id])
  end

  private

  #a ajouter pour les methodes create et update.
  # def params_vice
  #   params.require(:controller).permit(:name, :category, :description, :disponibility, :address, :price )
  # end

end
