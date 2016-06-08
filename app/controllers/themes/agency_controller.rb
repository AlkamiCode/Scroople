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
    agency_theme        = AgencyTheme.find(params[:theme_id])
    agency_theme_column = params[:theme_column]
    agency_theme.update(agency_theme_column => params[:new_column_value])

    respond_with "something"
  end
end
