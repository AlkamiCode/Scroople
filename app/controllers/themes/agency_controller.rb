class Themes::AgencyController < ApplicationController
  def index
  end

  def show
    @user  = User.find(params[:user_id])
  end

  def create
    AgencyTheme.create(title: params[:theme_title], user_id: params[:user_id])
    # redirect to themes/whatever-theme/user_id
    redirect_to :themes_agency_path(params[:user_id])
  end
end
