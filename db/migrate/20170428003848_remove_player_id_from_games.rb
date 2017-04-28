class RemovePlayerIdFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :player_id, :string
  end
end
