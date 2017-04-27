# frozen_string_literal: true

class Phrase < ApplicationRecord
  validates :phrase_content, presence: true
  validates :phrase_hint, presence: true
end
