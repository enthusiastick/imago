class Image < ActiveRecord::Base

  mount_uploader :img, ImageUploader
  validates_numericality_of :weight, integer_only: true

  belongs_to :piece

end
