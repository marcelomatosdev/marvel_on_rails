# frozen_string_literal: true

class CreateCharacterComicLinks < ActiveRecord::Migration[6.0]
  def change
    drop_table :character_comic_link
  end
end
