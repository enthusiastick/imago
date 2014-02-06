class Image < ActiveRecord::Base

  mount_uploader :img, ImageUploader
  validates_numericality_of :weight, integer_only: true

  after_create :set_weight

  def set_weight
    self.update(weight: self.id) if self.weight == 0
  end

  belongs_to :piece

end
