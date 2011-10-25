class Game < ActiveRecord::Base
  belongs_to :winner, :class => 'Player', :foreign_key => 'winner_id'
  belongs_to :loser, :class => 'Player', :foreign_key => 'loser_id'
end
