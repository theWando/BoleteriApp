module UsersHelper
	def is_ther_any_admin
		if !User.where(:user_type => "admin").exists?
			@type = @type = ["admin"]
		else
			@type = ["empleado","pasajero"]
		end
	end
end
