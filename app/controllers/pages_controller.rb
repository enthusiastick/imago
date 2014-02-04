class PagesController < ApplicationController

  def index
    @images = Image.order(:weight).limit(10)
  end
end
