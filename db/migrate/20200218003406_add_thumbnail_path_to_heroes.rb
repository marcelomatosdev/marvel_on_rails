class AddThumbnailPathToHeroes < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :thumbnail_path, :string
  end
end
