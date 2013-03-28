class Asset < ActiveRecord::Base
  belongs_to :hotel
  attr_accessible :name
end
