class CreatePhrases < ActiveRecord::Migration[5.0]
  def change
    create_table :phrases do |t|
      t.string :phrase_content
      t.string :phrase_hint

      t.timestamps
    end
  end
end
