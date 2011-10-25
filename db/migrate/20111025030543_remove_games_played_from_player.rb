class RemoveGamesPlayedFromPlayer < ActiveRecord::Migration
  def up
    remove_column :players, :games_played
  end

  def down
  end
end
