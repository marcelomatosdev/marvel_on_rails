# frozen_string_literal: true

class Hero < ApplicationRecord
  has_many :character_comics
  has_many :comics, through: :character_comics, dependent: :destroy
end
