class AddThumbnailExtensionToComics < ActiveRecord::Migration[6.0]
  def change
    add_column :comics, :thumbnail_extension, :string
  end
end
