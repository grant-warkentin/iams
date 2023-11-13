class Search
  def initialize(params)
    @query = params[:query]
    @category_id = params[:category_id]
    @manufacturer_id = params[:manufacturer_id]
  end

  def search_scope
    @devices = Device.where("name like '%#{@query}%'")
    if @category_id.present?
      @devices = @devices.where(category_id: @category_id)
    end
    if @manufacturer_id.present?
      @devices = @devices.where(manufacturer_id: @manufacturer_id)
    end

    return @devices
  end
end
