class GamesController < ApplicationController
  def create
    @game = Game.new params[:game]
    if @game.save
      @game.update_rankings 
      flash[:success] = 'Game was successfully created'
      redirect_to root_path
    else
      flash[:error] = 'Game could not be created'
      redirect_to root_path
    end
  end

end
