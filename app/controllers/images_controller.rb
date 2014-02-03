class ImagesController < ApplicationController

  def create
    @image = Image.new(image_params)
    @image.piece = Piece.find(params[:piece_id])
    if @image.save
      flash[:notice] = "Image uploaded successfully."
      redirect_to piece_path(@image.piece)
    else
      flash[:error] = "Error! Haven't you learned anything?"
      render :new
    end
  end

  def new
    @piece = Piece.find(params[:piece_id])
    @image = Image.new
  end

  def show
    @image = Image.find(params[:id])
  end

  protected

  def image_params
    params.require(:image).permit(:caption, :piece, :img)
  end

end
