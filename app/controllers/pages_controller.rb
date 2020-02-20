class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :confirmation]
  def home
  end

  def confirmation
    @conference = Conference.find(params[:conference_id])
  end
end
