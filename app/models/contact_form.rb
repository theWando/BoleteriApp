class ContactForm < ActiveRecord::Base
  attr_accessible :name, :type, :value

	belongs_to	:passenger

	validates :type,	:presence => true
	validates :value, :uniqueness => true
end
