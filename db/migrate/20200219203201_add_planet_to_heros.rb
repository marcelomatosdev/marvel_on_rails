# frozen_string_literal: true

class AddPlanetToHeros < ActiveRecord::Migration[6.0]
  def change
    add_reference :heros, :planet, null: true, foreign_key: true
  end
end
