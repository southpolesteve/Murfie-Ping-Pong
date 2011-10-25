class Player < ActiveRecord::Base
  has_many :wins, :class_name => 'Game', :foreign_key => 'winner_id'
  has_many :losses, :class_name => 'Game', :foreign_key => 'loser_id'
  

  def games_played
    wins.count+losses.count
  end
end
