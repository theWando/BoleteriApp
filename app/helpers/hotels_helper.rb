module HotelsHelper
  def join_assets(hotel)
    hotel.assets.map { |t| t.name }.join(", ")
  end
end
