class ThemesController < ApplicationController
  def index
  end

  def create
    Theme.create(title: params[:theme_title], user_id: params[:user_id])
    # redirect to themes/whatever-theme/user_id
    redirect_to :back
  end
end
