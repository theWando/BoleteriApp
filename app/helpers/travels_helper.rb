module TravelsHelper
  def list_all_hotels
    list = Hotel.all.collect {|hotel| [ hotel.name + ', ' + hotel.city + ' - ' + hotel.country, hotel.id ] }
  end
end
