class PlayersController < ApplicationController
  def create
    @player = Player.new params[:player]
    @player.rating = 1000
    @player.pro = false
    if @player.save
      flash[:success] = 'Player was successfully created'
      redirect_to root_path
    else
      flash[:error] = 'Player could not be created'
      redirect_to root_path
    end
  end

end
