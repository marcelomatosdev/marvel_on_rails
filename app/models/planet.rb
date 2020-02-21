# frozen_string_literal: true

class Planet < ApplicationRecord
  has_many :heros

  validates :name, presence: true
end
