class AgencyTheme < ActiveRecord::Base
  has_one :user

  has_attached_file :brand_logo, styles: {
    # thumb: '100x100>',
    # square: '200x200#',
    # medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :brand_logo, :content_type => /\Aimage\/.*\Z/
end
