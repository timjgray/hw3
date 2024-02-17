class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render :template => "layouts/entries/index"
  end

  def new
    render :template => "layouts/entries/new"
  end
  def create
    @entries = Entry.new
    # assign user-entered form data to Places
    @entries["title"] = params["title"]
    @entries["description"] = params["description"]
    @entries["posted_on"] = params["posted_on"]

    @entries["place_id"] = params["place_id"]

    @entries.save
    # redirect user
    redirect_to "/places"
  end

end