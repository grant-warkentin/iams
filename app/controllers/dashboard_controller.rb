class DashboardController < ApplicationController

  def index
    @devices = Device.all
    #@unique_categories = Device.select(:category).distinct
    #@unique_softwares = Software.select(:name, :license_count).distinct
    
  end

end
