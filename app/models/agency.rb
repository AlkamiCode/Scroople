class Agency < ActiveRecord::Base
  belongs_to :user

  has_attached_file :brand_logo, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/agency_logo.png", styles: {
    # thumb: '100x100>',
    # square: '200x200#',
    # medium: '300x300>'
  }

  has_attached_file :header_image, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/header-bg.jpg", styles: {
  }

  has_attached_file :portfolio_project_1_image, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/portfolio_project_1_image.png", styles: {
  }

  has_attached_file :portfolio_project_2_image, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/portfolio_project_2_image.png", styles: {
  }

  has_attached_file :portfolio_project_3_image, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/portfolio_project_3_image.png", styles: {
  }

  has_attached_file :about_section_1_image, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/about_section_1_image.jpg", styles: {
  }

  has_attached_file :about_section_2_image, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/about_section_2_image.jpg", styles: {
  }

  has_attached_file :about_section_3_image, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/about_section_3_image.jpg", styles: {
  }

  has_attached_file :team_member_1, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/team_member_1.jpg", styles: {
  }

  has_attached_file :team_member_2, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/team_member_2.jpg", styles: {
  }

  has_attached_file :team_member_3, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/team_member_3.jpg", styles: {
  }

  has_attached_file :client_logo_1, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/client_logo_1.jpg", styles: {
    medium: "200x50"
  }

  has_attached_file :client_logo_2, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/client_logo_2.jpg", styles: {
  }

  has_attached_file :client_logo_3, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/client_logo_3.jpg", styles: {
  }

  has_attached_file :client_logo_4, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/client_logo_4.jpg", styles: {
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :brand_logo, :content_type => /\Aimage\/.*\Z/
end
