class SecondOdaisController < ApplicationController
  def index
    @second_odais = SecondOdai.all.order(created_at: 'DESC')
  end
  def new
    @photo = Photo.order(params[:photo_id]).last
  end
  def create
    @photo = Photo.order(params[:photo_id]).last
    @second_odai = SecondOdai.new(
      title: odai_params[:title],
      tag: odai_params[:tag],
      category: odai_params[:category],
      right: odai_params[:right],
      title: odai_params[:title],
      user_id: current_user.id,
      photo_id: @photo.id
    )
    if @second_odai.save
      redirect_to second_odais_path
    else
      redirect_to new_second_odai_path
    end
  end

  private
  def odai_params
    params.require(:second_odai).permit(:title, :tag, :category, :right)
  end

end
