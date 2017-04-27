# frozen_string_literal: true

class Game < ApplicationRecord
  belongs_to :user
  validates :player_id, :user, presence: true
end
