class ContentController < ApplicationController
  
  def home
    @player = Player.new
    @game = Game.new
    @players = Player.all.sort { |a,b| b.rating <=> a.rating}
  end

end
