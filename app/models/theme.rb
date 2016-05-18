class Theme < ActiveRecord::Base
  belongs_to :user

  # This method associates the attribute ":logo" with a file attachment
  has_attached_file :logo, styles: {
    # thumb: '100x100>',
    # square: '200x200#',
    # medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
