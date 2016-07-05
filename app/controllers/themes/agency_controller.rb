class Themes::AgencyController < ApplicationController
  respond_to :json, :html

  def index
  end

  def show
    @user  = User.find(params[:id])
  end

  def create
    Agency.create(agency_params)
    redirect_to controller: 'agency', action: 'show', id: params[:agency][:user_id]
  end

  def update
    agency = Agency.find(params[:id])
    agency.update!(agency_params)

    respond_to do |format|
      format.html { respond_with :themes, agency }
      format.json { render json: { results: agency } }
    end
  end

  private

  def agency_params
    params.require(:agency).permit(
      :user_id,

      :brand_logo,
      :header_image,
      :intro_lead_in,
      :intro_heading,

      :services_subheading,
      :services_icon_1,
      :services_icon_1_heading,
      :services_icon_1_subheading,

      :services_icon_2,
      :services_icon_2_heading,
      :services_icon_2_subheading,

      :services_icon_3,
      :services_icon_3_heading,
      :services_icon_3_subheading,

      :portfolio_subheading,

      :portfolio_project_1_image,
      :portfolio_project_1_name,
      :portfolio_project_1_category,
      :portfolio_project_1_description,
      :portfolio_project_1_date,
      :portfolio_project_1_client,

      :portfolio_project_2_image,
      :portfolio_project_2_name,
      :portfolio_project_2_category,
      :portfolio_project_2_description,
      :portfolio_project_2_date,
      :portfolio_project_2_client,

      :portfolio_project_3_image,
      :portfolio_project_3_name,
      :portfolio_project_3_category,
      :portfolio_project_3_description,
      :portfolio_project_3_date,
      :portfolio_project_3_client,

      :about_subheading,
      :about_section_1_year,
      :about_section_1_heading,
      :about_section_1_body,
      :about_section_1_image,

      :about_section_2_year,
      :about_section_2_heading,
      :about_section_2_body,
      :about_section_2_image,

      :about_section_3_year,
      :about_section_3_heading,
      :about_section_3_body,
      :about_section_3_image,

      :team_subheading,
      :team_member_1,
      :team_member_1_name,
      :team_member_1_role,
      :team_member_1_social_icon_1_title,
      :team_member_1_social_icon_1_url,
      :team_member_1_social_icon_2_title,
      :team_member_1_social_icon_2_url,
      :team_member_1_social_icon_3_title,
      :team_member_1_social_icon_3_url,

      :team_member_2,
      :team_member_2_name,
      :team_member_2_role,
      :team_member_2_social_icon_1_title,
      :team_member_2_social_icon_1_url,
      :team_member_2_social_icon_2_title,
      :team_member_2_social_icon_2_url,
      :team_member_2_social_icon_3_title,
      :team_member_2_social_icon_3_url,


      :team_member_3,
      :team_member_3_name,
      :team_member_3_role,
      :team_member_3_social_icon_1_title,
      :team_member_3_social_icon_1_url,
      :team_member_3_social_icon_2_title,
      :team_member_3_social_icon_2_url,
      :team_member_3_social_icon_3_title,
      :team_member_3_social_icon_3_url,

      :team_footer_text,

      :client_logo_1,
      :client_logo_1_url,
      :client_logo_2,
      :client_logo_2_url,
      :client_logo_3,
      :client_logo_3_url,
      :client_logo_4,
      :client_logo_4_url,

      :theme_social_icon_1_title,
      :theme_social_icon_1_url,
      :theme_social_icon_2_title,
      :theme_social_icon_2_url,
      :theme_social_icon_3_title,
      :theme_social_icon_3_url
    )
  end
end
