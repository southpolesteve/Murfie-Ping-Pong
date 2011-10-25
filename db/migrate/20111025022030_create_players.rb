class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :games_played
      t.integer :rating
      t.boolean :pro

      t.timestamps
    end
  end
end
