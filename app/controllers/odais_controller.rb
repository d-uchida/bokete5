class OdaisController < ApplicationController

  def index
    @odais = Odai.all.order(created_at: 'desc')
  end

  def new
  end

  def create
  end

end
