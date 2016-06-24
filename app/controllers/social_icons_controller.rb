class SocialIconsController < ApplicationController
  def update
    social_icon = SocialIcon.find(params[:id])
    social_icon.update(social_icon_params)
    redirect_to :back
  end

  private

  def social_icon_params
    params.require(:social_icon).permit(:title, :url, :user_id)
  end
end
