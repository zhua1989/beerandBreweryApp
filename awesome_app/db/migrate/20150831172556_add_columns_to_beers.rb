class AddColumnsToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :abv, :string
    add_column :beers, :image_url, :string
    add_column :beers, :brewery_name, :string
  end
end
