class Piece < ActiveRecord::Base

  mount_uploader :url, PieceUploader

end