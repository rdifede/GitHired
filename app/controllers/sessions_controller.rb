class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by(:email => params[:session][:email])

		if @user && @user.authenticate(params[:session][:password])
			session[:user_id] = @user.id
			redirect_to @user
		else
			redirect_to login_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path
	end
end

##i got this format from a lesson on user auth and the names of the methods fit with the structure of my app so i kept them