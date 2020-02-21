# frozen_string_literal: true

class Hero < ApplicationRecord
  belongs_to :planet

  has_many :character_comics
  has_many :comics, through: :character_comics, dependent: :destroy

  validates :name, presence: true
end
