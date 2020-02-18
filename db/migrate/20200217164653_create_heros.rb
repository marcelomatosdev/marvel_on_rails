# frozen_string_literal: true

class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name

      t.timestamps
    end
  end
end
