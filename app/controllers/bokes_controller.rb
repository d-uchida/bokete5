class BokesController < ApplicationController
  before_action :authenticate_user!
  def index
    @bokes = "bokete目コピ"
  end
end
