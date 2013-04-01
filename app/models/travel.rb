class Travel < ActiveRecord::Base
  attr_accessible :destination_city, :destination_country, :detail, :extract, :n_days, :n_nights, :number_of_seats_aviables, :price, :quota_attributes, :hotel_id

	validates :destination_city, :destination_country, :detail, :extract, :n_days, :n_nights, :number_of_seats_aviables,	:presence => true
	validates :destination_country,	:length	=> {:minimum => 4, :maximum => 59} #de acuerdo a los paises con los combres mas cortos y nombres mas largos
	validates	:destination_city,		:length => {:minimum => 1, :maximum => 85}
  validates :number_of_seats_aviables, :numericality => { :only_integer => true , :greater_than_or_equal_to => 5}
  validates :price, :numericality => :true
	
	has_one :quota
	has_many :tickets
	has_one :hotel, :through => :quota
  
  accepts_nested_attributes_for :quota, :allow_destroy => :true
end
