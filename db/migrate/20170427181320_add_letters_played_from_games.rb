class AddLettersPlayedFromGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :letters_played, :integer
  end
end
