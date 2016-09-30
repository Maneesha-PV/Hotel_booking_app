class WelcomeController < ApplicationController
	def index
		if current_user
			if current_user.role == 'admin'
				redirect_to userlist_index_path
			else
				redirect_to booking_index_path
			end
		end
	end
end
