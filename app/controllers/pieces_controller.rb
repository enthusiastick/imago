class PiecesController < ApplicationController

  def create
    @piece = Piece.new(piece_params)
    @piece.user = current_user
    if @piece.save
      flash[:notice] = "Image uploaded successfully."
      redirect_to piece_path(@piece)
    else
      flash[:error] = "Error! Haven't you learned anything?"
      render :new
    end
  end

  def index
    @pieces = Piece.all
  end

  def new
    @piece = Piece.new
  end

  def show
    @piece = Piece.find(params[:id])
  end

  protected

  def piece_params
    params.require(:piece).permit(:title, :description)
  end
end
