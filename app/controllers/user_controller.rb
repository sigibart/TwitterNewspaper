class UserController < ApplicationController
layout "application"
before_filter :authenticate_user!

	def profile
	end	

end
