class RemovePlanetFromHero < ActiveRecord::Migration[6.0]
  def change

    remove_column :heros, :planet, :string
  end
end
