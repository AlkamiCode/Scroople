class SocialIconsController < ApplicationController
  respond_to :json, :html

  def update
    social_icon = SocialIcon.find(params[:id])
    social_icon.update(social_icon_params)

    respond_to do |format|
      format.html { respond_with :social_icon }
      format.json { render json: { results: social_icon } }
    end
  end


  private

  def social_icon_params
    params.require(:social_icon).permit(:title, :url, :user_id)
  end
end
