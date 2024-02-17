class EntriesController < ApplicationController

  def index
    render :template => "layouts/entries/index"
  end

end