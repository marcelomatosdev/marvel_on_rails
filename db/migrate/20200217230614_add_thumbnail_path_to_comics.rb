class AddThumbnailPathToComics < ActiveRecord::Migration[6.0]
  def change
    add_column :comics, :thumbnail_path, :string
  end
end
