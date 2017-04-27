class GameSerializer < ActiveModel::Serializer
  attributes :id, :player_id, :game_status, :letters_played
end
