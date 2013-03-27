class Hotel < ActiveRecord::Base
  attr_accessible :city, :country, :name, :number_of_rooms_doubles, :number_of_rooms_married, :number_of_rooms_single
  #agregar venues que se agregen como carácteristicas del hotel (piscina, bar, casino, etc)
end
