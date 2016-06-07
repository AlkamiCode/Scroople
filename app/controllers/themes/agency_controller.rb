class Themes::AgencyThemeController < ApplicationController
  def index
  end

  def show
    @user  = User.find(params[:id])
  end

  def create
    AgencyTheme.create(title: params[:theme_title], user_id: params[:user_id])
    # redirect to themes/whatever-theme/user_id
    redirect_to :back
  end
end
