class MainController < ApplicationController
	def index
		if session[:user_id]
			# find would throw error if not found, but find_by will not:
			@user = User.find_by(id: session[:user_id])
		end
	end
end
