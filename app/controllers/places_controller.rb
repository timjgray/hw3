class PlacesController < ApplicationController

  def index
    @places = Place.all
    @entries = Entry.all
    render :template => "layouts/places/index"
  end

  def new 
    render :template => "layouts/places/new"
    # enter new place that you visited 
  end 

  def create
    # start with a new Place
    @places = Place.new
    # assign user-entered form data to Places
    @places["name"] = params["name"]
    # save 
    @places.save
    # redirect user
    redirect_to "/places"
  end

  def show
    @entries = Entry.all
    @places = Place.find_by({"id" => params["id"]})
    #@entries = Entry.where({"place_id" => @places["id"]})
    #@entries = Entry.all 
    # find a Place
    #@places = Place.find_by({"id" => params["id"]})
    #@entries = Entry.find_by({"id" => @places["id"]})
    render :template => "layouts/places/show"
  end

end