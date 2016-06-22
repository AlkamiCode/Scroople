class Agency < ActiveRecord::Base
  belongs_to :user

  has_attached_file :brand_logo, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/agency_logo.png", styles: {
    # thumb: '100x100>',
    # square: '200x200#',
    # medium: '300x300>'
  }

  has_attached_file :header_image, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/header-bg.jpg", styles: {
    # thumb: '100x100>',
    # square: '200x200#',
    # medium: '300x300>'
  }

  has_attached_file :portfolio_project_1_image, default_url: "https://s3-us-west-2.amazonaws.com/scroopledev/agencies/portfolio_project_1_image.png", styles: {
    # thumb: '100x100>',
    # square: '200x200#',
    # medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :brand_logo, :content_type => /\Aimage\/.*\Z/
end
