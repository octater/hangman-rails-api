class RemoveLettersPlayedFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :letters_played, :string
  end
end
