# frozen_string_literal: true

class CharacterComic < ApplicationRecord
  belongs_to :hero
  belongs_to :comic
end
