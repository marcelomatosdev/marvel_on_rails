# frozen_string_literal: true

class CreateCharacterComics < ActiveRecord::Migration[6.0]
  def change
    create_table :character_comics do |t|
      t.references :hero, null: false, foreign_key: true
      t.references :comic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
