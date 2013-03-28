class Hotel < ActiveRecord::Base
  attr_accessible :city, :country, :name, :number_of_rooms_doubles, :number_of_rooms_married, 
                  :number_of_rooms_single, :assets_attributes
  
  has_many  :assets
  
  accepts_nested_attributes_for :assets, :allow_destroy => :true,
        :reject_if => proc { |assets| assets.all? { |k, v| v.blank? }}
        
  #agregar venues que se agregen como car�cteristicas del hotel (piscina, bar, casino, etc)
end
