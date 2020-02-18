class ConferencesController < ApplicationController

  def index
    @conferences = Conference.all
  end

  def show
    @conference = Conference.find(params[:vice_id])
  end

  def new
    @vice = Vice.find(params[:vice_id])
    @conference = Conference.new
  end

  def create
    #TODO redigirer vers l'identification !!! Quentin 1702
    @vice = Vice.find(params[:vice_id])
    @conference = Conference.new(conference_params)
    #TODO @conference.user_id = session a trouver dans les params !!! Quentin 1702
    if @conference.save
      redirect_to conference_path(@conference)
    else
      render :new
    end
  end

  private

  def conference_params
    params.require(:conference).permit(:title, :date, :status)
  end

end
