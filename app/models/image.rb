class Image < ActiveRecord::Base

  mount_uploader :img, ImageUploader

  belongs_to :piece

end
