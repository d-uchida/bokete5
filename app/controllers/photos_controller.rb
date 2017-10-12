class PhotosController < ApplicationController

  def index
    @photos = Photo.all.order(created_at: "desc")
  end
  def new
  end
  def create
    @photo = Photo.new(photo_params)
    @photo.save
    redirect_to new_photo_path unless @photo.save
  end

  def upload
  end

  private
  def photo_params
    params.require(:photo).permit(:image)
  end
end
