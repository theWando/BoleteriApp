module UsersHelper
	def is_ther_any_admin
		User.where(:user_type => "admin").exists?
	end
end
