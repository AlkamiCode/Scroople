class AgencyTheme < ActiveRecord::Base
  belongs_to :user

  has_attached_file :brand_logo, default_url: "themes/agency/logos/creative-market.jpg", styles: {
    # thumb: '100x100>',
    # square: '200x200#',
    # medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :brand_logo, :content_type => /\Aimage\/.*\Z/
end
