class ImageController < ApplicationController
  def index
  	@images = Image.where(album_id: params[:album_id])
  	render json: @images
  end

  def show
  	puts params
  end

  def new
  end
end
