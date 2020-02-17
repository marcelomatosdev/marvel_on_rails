class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :description
      t.datetime :modified
      t.integer :page_count
      t.string :image_path
      t.string :image_extension

      t.timestamps
    end
  end
end
