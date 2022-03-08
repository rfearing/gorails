class RegistrationsController < ApplicationController
	def new
		# @ = Instance variable (will be available in our view)
		@user = User.new
	end
end
