class PlacesController < ApplicationController

  def index
    @places = Place.all
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
    # save Company row
    @places.save
    # redirect user
    redirect_to "/places"
  end

  def show
    # find a Place
    @places = Place.find_by({"id" => params["id"]})
    #@contacts = Contact.where({"company_id" => @company["id"]})
    # render companies/show view with details about Company
    render :template => "layouts/places/show"
  end

end