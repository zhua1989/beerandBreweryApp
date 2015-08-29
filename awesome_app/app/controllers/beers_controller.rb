class BeersController < ActivationController
  def search # receives GET request from user#show looking for beers and renders the search results page
    f = File.read("../../../secrets.json")
    data = JSON.parse(f)
    key = data["key"]

    userQuery = params[:search]
    APIurl = "http://api.brewerydb.com/v2/search/?key=" + apiKey + "&q=" + userQuery+ "&type=beer&withBreweries=y"
    # hit the API for search results

    # further filter the API results 

    # pass the restults to the search view
  end

  def create
    # receives the POST request from search results page and adds the beer to the database
  end

  def show
  end

  def destroy
  end
end