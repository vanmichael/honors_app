module UsersHelper
	def full_name(firstname, lastname)
		@user.first_name + " " + @user.last_name
	end
end
