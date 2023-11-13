class SearchController < ApplicationController
  def index
    search = Search.new(query: params[:query],category_id: params[:category_id], manufacturer_id: params[:manufacturer_id])
    @devices = search.search_scope
  end
end
