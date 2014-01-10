class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def new

  end

  def error
    @beers = Beer.all
  end

  def create
    brew = {}
    brew[:name] = params[:name]
    brew[:description] = params[:description]
    brew[:batch_yield] = params[:batch_yield]
    brew[:regional_style] = params[:regional_style]
    brew[:beer_style] = params[:beer_style]
    brew[:color] = params[:color]
    brew[:original_gravity] = params[:original_gravity]
    brew[:final_gravity] = params[:final_gravity]
    brew[:time_to_make] = params[:time_to_make]
    brew[:image_url] = params[:image_url]

    if Beer.find_by_name(brew[:name])
      @error_beer = brew[:name]
      redirect_to '/beer/error'
    else
      @beer = Beer.create(brew)
      redirect_to '/'
    end 
  end

  def list
    @beers = Beer.all
  end

  def destroy
    selected_beer = params[:id]
    Beer.find(selected_beer).delete
    redirect_to '/beer_list'
  end

  def show
    selected_beer = params[:id]
    @beer = Beer.find(selected_beer)
  end

end
