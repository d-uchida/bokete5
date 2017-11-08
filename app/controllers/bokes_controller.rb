class BokesController < ApplicationController
  before_action :authenticate_user!

  def index
    @bokes = Boke.all.order(created_at: "desc")
    @latest_boke = Boke.last
    @latest_odai = Odai.last
    @now = Time.now
    
  end
  def new
    @odai = Odai.find(params[:odai_id])
  end
  def preview
    @odai = Odai.find(params[:boke][:odai_id])
    @boke = Boke.new(
      odai_id: @odai.id,
      user_id: current_user.id,
      text: boke_params[:text],
      tag: boke_params[:tag],
      category: boke_params[:category]
    )
    render :new if @boke.invalid?
  end
  def create
    @odai = Odai.find(params[:boke][:odai_id])
    @boke = Boke.new(
      odai_id: @odai.id,
      user_id: current_user.id,
      text: boke_params[:text],
      tag: boke_params[:tag],
      category: boke_params[:category]
    )
    if @boke.save
      redirect_to done_bokes_path
    else
      redirect_to new_odai_boke_path
    end
  end


  private
  def boke_params
    params.require(:boke).permit(:text, :tag, :category)
  end

end
