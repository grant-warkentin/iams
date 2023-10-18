class DashboardController < ApplicationController

  def index 
    @unique_categories = Device.select(:category).distinct
    @unique_softwares = Software.select(:name, :license_count).distinct
    
  end

end
