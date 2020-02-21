# frozen_string_literal: true

class Comic < ApplicationRecord
  has_many :character_comics
  has_many :heros, through: :character_comics, dependent: :destroy

  validates :title, presence: true
end
