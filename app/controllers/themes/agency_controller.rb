class Themes::AgencyController < ApplicationController
  respond_to :json, :html

  def index
  end

  def show
    @user  = User.find(params[:id])
  end

  def create
    AgencyTheme.create(title: "agency", user_id: params[:id])
    redirect_to controller: 'agency', action: 'show', id: params[:id]
  end

  def update
    agency_theme = AgencyTheme.find(params[:user_id])
    agency_theme.update(intro_lead_in: params[:intro_lead_in])

    respond_with AgencyTheme.find(params[:user_id])
  end
end
