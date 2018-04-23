class SessionsController < ApplicationController
	def destroy
		reset_session
		redirect_to users_sign_up_path
	end

	def create
		session[:user_id] =
		if params[:user][:email].present? && params[:user][:password].present?
			email = params[:user][:email]
			password = params[:user][:password]
			@user = User.find_by(email: email)
			session[:user_id] = @user.id if @user.password == password
			redirect_to root_path
		else
			redirect users_sign_in_path
		end
	end

	def new
		@user = User.new
	end
end
