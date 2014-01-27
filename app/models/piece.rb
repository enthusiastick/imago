class Piece < ActiveRecord::Base

  mount_uploader :url, PieceUploader

  belongs_to :user

end
