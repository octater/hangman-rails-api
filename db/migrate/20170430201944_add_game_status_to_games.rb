class AddGameStatusToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :game_status, :integer
  end
end
