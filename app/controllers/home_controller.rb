class HomeController < ApplicationController
  def index
		@users = User.find_all_by_type("admin")
		if @users.empty? #En caso de que no haya usuarios se envía a crear un administrador
			redirect_to '/users/new'
		end
  end
end
