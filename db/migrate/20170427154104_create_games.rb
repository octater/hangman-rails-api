class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :player_id
      t.string :game_status
      t.string :letters_played, default: ["", "", "", "", "", ""], array: true

      t.timestamps
    end
  end
end
