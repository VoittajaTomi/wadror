class PlacesController < ApplicationController
  
  #include BeermappingAPI
  
  def index
  end

  def search
    @places = BeermappingAPI.places_in(params[:city])
    if @places.empty?
      redirect_to places_path, :notice => "No locations in #{params[:city]}"
    else
      render :index
    end
  end
end