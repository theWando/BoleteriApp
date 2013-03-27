class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :birth_date, :email, :lastname, :name, :password, :user_type, :password_confirmation, :remember_me

  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]{2,4}$/i

  validates :name, :lastname, :user_type, :password_confirmation,			:presence => true
  validates :email, 		:presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password,	:length => { :minimum => 5, :maximum => 40 },
												:confirmation => true #password_confirmation attr
end
