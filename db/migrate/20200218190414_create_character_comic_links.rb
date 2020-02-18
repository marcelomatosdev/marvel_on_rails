# frozen_string_literal: true

class CreateCharacterComicLinks < ActiveRecord::Migration[6.0]
  def change

    create_table :character_comic_links do |t|
      t.references :hero, null: false, foreign_key: true
      t.references :comic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
