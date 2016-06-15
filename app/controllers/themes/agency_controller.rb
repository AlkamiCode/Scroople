class Themes::AgencyController < ApplicationController
  respond_to :json, :html

  def index
  end

  def show
    @user  = User.find(params[:id])
  end

  def create
    Agency.create(agency_params)
    redirect_to controller: 'agency', action: 'show', id: params[:agency][:id]
  end

  def update
    agency = Agency.find(params[:id])
    agency.update(agency_params)

    respond_with agency
  end

  private

  def agency_params
    params.require(:agency).permit(:brand_logo, :intro_lead_in, :intro_heading, :user_id)
  end
end
