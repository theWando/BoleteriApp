class User < ActiveRecord::Base
  attr_accessible :birth_date, :email, :lastname, :name, :password, :type, :password_confirmation

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/i

  validates :name, :lastname, :type, :password_confirmation,			:presence => true
  validates :email, 		:presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password,	:length => { :minimum => 5, :maximum => 40 },
												:confirmation => true #password_confirmation attr
end
