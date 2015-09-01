require 'httparty'

class BeersController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def search # receives GET request from user#show looking for beers and renders the search results page
# read API key from config/local_env.yml
    apiKey = ENV["BEER_API_KEY"]

# build the query string
    userQuery = params[:search].chomp
    @APIurl = "http://api.brewerydb.com/v2/search/?key=" << apiKey << "&q='" << userQuery << "'&type=beer&withBreweries=y"

# hit the API for search results
    request = HTTParty.get(@APIurl)

# further filter the API results based on the filter param in the search page
    filter = params[:filter]
    beersUserTasted = User.find(session[:user_id]).tastings.pluck("beer_api_id")

    if filter == "Top Results"
      @beers = request["data"].take(15)
      # @alreadyTasted creates an array of true/false based on whether the beer is already User.tastings
      @alreadyTasted = @beers.map { |beer| beersUserTasted.include?(beer["id"]) }
  
    
    elsif filter == "Only Name"
      # ternary operatory returns true if the the userQuery is found in the beer.name
      matches = request["data"].select { |beer| beer["name"].chomp.downcase.match(userQuery.downcase) ? true : false}
      @beers = matches.take(15)
      @alreadyTasted = @beers.map { |beer| beersUserTasted.include?(beer["id"]) }
    
    elsif filter == "Only Description"
      # ternary operatory returns true if the the userQuery is found in the beer.description
      matches = request["data"].select { |beer| 
        if beer["description"]
          beer["description"].chomp.downcase.match(userQuery.downcase) ? true : false
        else
          false
        end
      }
      @beers = matches.take(15)
      @alreadyTasted = @beers.map { |beer| beersUserTasted.include?(beer["id"]) }
    end # end if statement
  
  end # end search method

  def create
# grabbing form data based on the value of the radio button that was selected
    id = params[:beer_id]
    name = params[:"#{id}_name"]
    description = params[:"#{id}_description"] || "no description provided"
    abv = params[:"#{id}_abv"]
    image_url = params[:"#{id}_image_url"]
    brewery_name = params[:"#{id}_brewery_name"]

    if id
      # confirming that beer has a name and is not "nil"
      if !Beer.find_by(beer_api_id: id) && Tasting.where({user_id: session[:user_id], beer_api_id: id}).length == 0
        puts "~~~~~~~~~BEER NOT FOUND~~~~~~~~~~"
        newBeer = Beer.create({beer_api_id: id, name: name, description: description, abv: abv, image_url: image_url, brewery_name: brewery_name})
        Tasting.create({user_id: session[:user_id], beer_id: newBeer.id, beer_api_id: id})
    
      elsif Beer.find_by(beer_api_id: id) && Tasting.where({user_id: session[:user_id], beer_api_id: id}).length == 0
        puts "~~~~~~~~~BEER FOUND~~~~~~~~~~"
        newBeer = Beer.find_by(beer_api_id: id)
        Tasting.create({user_id: session[:user_id], beer_id: newBeer.id, beer_api_id: id})
      end

    end
    
    # redirect to the user's show page after adding a beer to their collection
    redirect_to user_path(session[:user_id])
  end

  def show
    @beer = Beer.find(params[:id])
    @comments = @beer.comments
  end

  def destroy
  end

end