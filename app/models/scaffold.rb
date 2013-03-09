class Scaffold < ActiveRecord::Base
  attr_accessible :Vehicle, :name, :seats, :serial_code, :type
end
