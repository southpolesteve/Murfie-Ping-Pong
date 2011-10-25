class Game < ActiveRecord::Base
  belongs_to :winner, :class_name => 'Player', :foreign_key => 'winner_id'
  belongs_to :loser, :class_name => 'Player', :foreign_key => 'loser_id'

  validates :winner_id, :presence => true
  validates :loser_id, :presence => true

  def update_rankings
    winner = Elo::Player.new( rating: self.winner.rating, games_played: self.winner.games_played, pro: self.winner.pro)
    loser = Elo::Player.new( rating: self.loser.rating, games_played: self.loser.games_played, pro: self.loser.pro)
    game = winner.versus(loser)
    game.winner = winner
    self.winner.update_attribute(:rating, winner.rating)
    self.loser.update_attribute(:rating, loser.rating)
    unless winner.pro? == self.winner.pro
      self.winner.update_attribute(:pro, winner.pro?)
    end
    unless loser.pro? == self.loser.pro
      self.loser.update_attribute(:pro, loser.pro?)
    end
  end

  def self.console_game(winner,loser)
    game = Game.create(winner: winner, loser: loser)
    game.update_rankings
  end

end
