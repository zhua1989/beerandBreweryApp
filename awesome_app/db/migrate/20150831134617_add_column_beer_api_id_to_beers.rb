class AddColumnBeerApiIdToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :beer_api_id, :string
  end
end
