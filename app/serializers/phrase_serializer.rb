# frozen_string_literal: true

class PhraseSerializer < ActiveModel::Serializer
  attributes :id, :phrase_content, :phrase_hint
end
