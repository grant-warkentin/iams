class ManufacturersController < ApplicationController

  # GET /manufacturers or /manufacturers.json
  def index
    @manufacturers = Device.select(:manufacturer, :website).distinct
  end
end
