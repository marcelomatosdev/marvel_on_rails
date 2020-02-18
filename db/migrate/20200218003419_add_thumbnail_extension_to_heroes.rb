# frozen_string_literal: true

class AddThumbnailExtensionToHeroes < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :thumbnail_extension, :string
  end
end
