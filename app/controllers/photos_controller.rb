class PhotosController < ApplicationController

  def index
  end
  def new
  end
  def create
    Photo.create(photo_params)
  end
  def upload
    #code
  end

  private
  def photo_params
    params.permit(:id, :img)
  end


end
