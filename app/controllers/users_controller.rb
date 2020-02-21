class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # @vice = Vice.all
    @users = User.all.page(params[:page])
    #filtrer sur les users ayant un vice
  end

  def show
    @user = User.find(params[:id])
  end
end
