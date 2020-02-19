# frozen_string_literal: true

class AddHerosToPlanets < ActiveRecord::Migration[6.0]
  def change
    add_reference :heros, :planets
  end
end
