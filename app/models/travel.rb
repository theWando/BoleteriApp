class Travel < ActiveRecord::Base
  attr_accessible :destination_city, :destination_country, :detail, :extract, :n_days, :n_nights

	validates :destination_city, :destination_country, :detail, :extract, :n_days, :n_nights,	:presence => true
	validates :destination_country,	:length	=> {:minimum => 4, :maximum => 59} #de acuerdo a los paises con los combres mas cortos y nombres mas largos
	validates	:destination_city,		:length => {:minimum => 1, :maximum => 85}
	
	
end
