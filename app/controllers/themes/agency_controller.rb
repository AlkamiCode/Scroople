class Themes::AgencyController < ApplicationController
  def index
  end

  def show
    @user  = User.find(params[:id])
  end

  def create
    AgencyTheme.create(title: "agency", user_id: params[:id])
    redirect_to controller: 'agency', action: 'show', id: params[:id]
  end
end
