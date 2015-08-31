class AddColumnBeerApiIdToTastings < ActiveRecord::Migration
  def change
    add_column :tastings, :beer_api_id, :string
  end
end
