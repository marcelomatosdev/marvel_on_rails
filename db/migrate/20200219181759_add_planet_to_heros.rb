class AddPlanetToHeros < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :planet, :string
  end
end
