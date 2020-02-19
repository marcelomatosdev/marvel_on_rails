# frozen_string_literal: true

class Hero < ApplicationRecord
  belongs_to :planets

  has_many :character_comics
  has_many :comics, through: :character_comics, dependent: :destroy
end
