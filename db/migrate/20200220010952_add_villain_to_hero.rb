class AddVillainToHero < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :villain, :string
  end
end
