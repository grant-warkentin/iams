class CategoriesController < ApplicationController

  # GET /categories or /categories.json
  def index
    @categories = Device.select(:category).distinct
  end

end
