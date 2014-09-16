class HomeController < ApplicationController

	def index
		if user_signed_in?
			redirect_to :controller=>'user', :action => 'profile'
		end
	end
end
