class OdaisController < ApplicationController

  def index
    @odais = Odai.all.order(created_at: 'desc')
  end

  def new
    @photo = Photo.find(params[:photo_id])
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @odai = Odai.new(
      title: odai_params[:title],
      tag: odai_params[:tag],
      category: odai_params[:category],
      right: odai_params[:right],
      title: odai_params[:title],
      user_id: current_user.id,
      photo_id: @photo.id
    )
    redirect_to new_photo_odai_path unless @odai.save
    @odai.save
  end
  private
  def odai_params
    params.require(:odai).permit(:title, :tag, :category, :right)
  end

end
