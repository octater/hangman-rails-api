class AddPhraseToGames < ActiveRecord::Migration[5.0]
  def change
    add_reference :games, :phrase, foreign_key: true
  end
end
