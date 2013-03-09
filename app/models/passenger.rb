class Passenger < ActiveRecord::Base
  attr_accessible :document, :document_type

	belong_to :user
	has_many :contact_form

	validates :document,			:presence => true
	validates	:document_type, :presence => true
end
