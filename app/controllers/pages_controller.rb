class PagesController < ApplicationController

  def index
    @images = Image.order(:weight).limit(20)
  end
end
