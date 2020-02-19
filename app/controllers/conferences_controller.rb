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
    @conference.status = "pending"

    if @conference.save
      redirect_to conference_path(@conference)
    else
      raise
      render :new
    end
  end

  private

  def conference_params
    params.require(:conference).permit( :date, :status)
  end

end
