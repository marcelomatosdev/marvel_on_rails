class AddDescriptionToHeros < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :description, :string
  end
end
