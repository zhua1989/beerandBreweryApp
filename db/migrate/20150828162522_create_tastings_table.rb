class CreateTastingsTable < ActiveRecord::Migration
  def change
    create_table :tastings do |t|
      t.integer :user_id
      t.integer :beer_id
      t.string :tasting_notes

      t.timestamps null: false
    end
  end
end
