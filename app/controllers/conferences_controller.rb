class ConferencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :index]

  def index
    @conferences = Conference.where(user_id: current_user.id)
  end

  def show
    @conference = Conference.find(params[:id])
  end

  def new
    @vice = Vice.find(params[:vice_id])
    @conference = Conference.new
  end

  def create
    @vice = Vice.find(params[:vice_id])
    @conference = Conference.new(conference_params)
    @conference.user = current_user
    @conference.vice = @vice
    @conference.status = "en attente"

    if @conference.save
      redirect_to conference_confirmation_path(@conference)
    else
      render :new
    end
  end

  def destroy
    @conference = Conference.find(params[:id])
    @conference.destroy
    redirect_to vices_path
  end

  private

  def conference_params
    params.require(:conference).permit( :date, :status)
  end

end
