class SetDefaultBeer < ActiveRecord::Migration
  def change
  	change_column_default :beers, :image_url, "http://southboundbrewingco.com/southbound/sites/default/files/default_images/defaultBeer.png"
  	change_column_default :beers, :description, "Sorry! There is no description"
  	change_column_default :beers, :abv, "N/A"
  	change_column_default :beers, :brewery_name, "Unknown"
  end
end
