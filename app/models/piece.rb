class Piece < ActiveRecord::Base

  belongs_to :user
  has_many :images

  def sorted_images
    self.images.order(:weight)
  end

end
