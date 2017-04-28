# frozen_string_literal: true

class GameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_status, :letters_played, :phrase_id
end
