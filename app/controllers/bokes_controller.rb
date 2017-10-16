class BokesController < ApplicationController
  before_action :authenticate_user!
  def index
    @bokes = Boke.all.order(created_at: "desc")
    @odais = SecondOdai.all
    @photos = Photo.all
  end
  def new
    @second_odai = SecondOdai.find(params[:second_odai_id])
  end
  def create
    @second_odai = SecondOdai.find(params[:second_odai_id])
    @boke = Boke.new(
      second_odai_id: @second_odai.id,
      # odai_id: @second_odai.id,
      user_id: current_user.id,
      text: odai_params[:text],
      tag: odai_params[:tag],
      category: odai_params[:category]
    )
    if @boke.save
      redirect_to root_path
    else
      redirect_to new_second_odai_boke_path
    end
  end

  private
  def odai_params
    params.require(:boke).permit(:text, :tag, :category)
  end


end
