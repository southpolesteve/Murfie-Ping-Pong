class Player < ActiveRecord::Base
  has_many :wins, :foreign_key => 'winner_id'
  has_many :losses, :foreign_key => 'loser_id'
  
end
