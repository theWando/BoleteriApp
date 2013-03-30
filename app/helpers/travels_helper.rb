module TravelsHelper
  def list_holets
    hotels = Hotel.all
    hotel_list = []
    hotels.each do |h|
      hotel_list << [h.name + ', ' + h.country + ' - ' + h.city, h.id]
    end
    hotel_list
  end
end
