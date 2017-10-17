class BokesController < ApplicationController
  before_action :authenticate_user!
  def index
    @bokes = Boke.all.order(created_at: "desc")
    @latest_boke = Boke.last

  end
  def new
    @odai = Odai.find(params[:odai_id])
  end
  def create
    @odai = Odai.find(params[:odai_id])
    @boke = Boke.new(
      odai_id: @odai.id,
      user_id: current_user.id,
      text: odai_params[:text],
      tag: odai_params[:tag],
      category: odai_params[:category]
    )
    if @boke.save
      redirect_to root_path
    else
      redirect_to new_odai_boke_path
    end
  end

  private
  def odai_params
    params.require(:boke).permit(:text, :tag, :category)
  end


end
