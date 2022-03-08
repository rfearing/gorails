class RegistrationsController < ApplicationController
	def new
		# @ = Instance variable (will be available in our view)
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			render_to root_path, notice: "Successfully Created User"
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
