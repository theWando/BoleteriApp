class Quota < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :travel
  
  has_many :tickets
  
  attr_accessible :aviable_tickets
end
