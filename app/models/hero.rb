# frozen_string_literal: true

class Hero < ApplicationRecord
  has_and_belongs_to_many :comics
end
