class HomeController < ApplicationController
  def index
		if !User.where(:user_type => "admin").exists? #En caso de que no haya usuarios se envía a crear un administrador
			redirect_to '/users/new'
		end
     @travels = Travel.all
  end
end
