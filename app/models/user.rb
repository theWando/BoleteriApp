class User < ActiveRecord::Base
  attr_accessible :birth_date, :email, :lastname, :name, :password, :type

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/i

	belongs_to :passenger
	belongs_to :employee

  validates :name,			:presence => true
  validates :lastname,	:presence => true
  validates :email, 		:presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password,	:confirmation => true #password_confirmation attr
  validates_length_of 	:password, :in => 6..20, :on => :create
	validates	:type,			:presence => true
end
