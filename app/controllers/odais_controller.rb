class OdaisController < ApplicationController

  def index
    @odais = Post.all.oreder(created_at: 'desc')
  end

end
