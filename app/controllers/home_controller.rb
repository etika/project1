class HomeController < ApplicationController
  def index
  end
  def search
  search=params[:search]
  @appartments=Appartment.near(params[:search],5000).map{|v| [v.latitude,v.longitude]}  
   @coordinates=Geocoder.coordinates(params[:search])
  end

end
