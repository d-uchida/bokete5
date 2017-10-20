class OdaisController < ApplicationController
  def index
    @odais = Odai.all.order(created_at: 'DESC')
  end
  def new
    @photo = Photo.order(params[:photo_id]).last
  end
  def preview
    @photo = Photo.order(params[:photo_id]).last
    @odai = Odai.new(
          title: odai_params[:title],
          tag: odai_params[:tag],
          category: odai_params[:category],
          right: odai_params[:right],
          user_id: current_user.id,
          photo_id: @photo.id
    )
    render :new if @odai.invalid?
  end
  def create
    @photo = Photo.order(params[:photo_id]).last
    @odai = Odai.new(
      title: odai_params[:title],
      tag: odai_params[:tag],
      category: odai_params[:category],
      right: odai_params[:right],
      user_id: current_user.id,
      photo_id: @photo.id
    )
    if @odai.save
      redirect_to odais_path
    else
      redirect_to new_odai_path
    end
  end

  private
  def odai_params
    params.require(:odai).permit(:title, :tag, :category, :right)
  end
end
