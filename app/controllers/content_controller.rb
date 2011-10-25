class ContentController < ApplicationController
  
  def home
    @player = Player.new
  end

end
