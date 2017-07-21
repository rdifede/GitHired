class UsersController < ApplicationController
	before_action :require_user, only: [:show]
	before_action :require_current_user, only: [:show]
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to @user
		else
			redirect_to signup_path
		end
	end

	def show
		@user = User.find(params[:id])
		@favejobs = Favejob.where(:user_id => @user)
		@favejobsid = Favejob.where(:user_id => @user).ids
		@todo = To_do.where(:favejob_id => @favejobsid)
		@alltodos = To_do.all
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :name, :location, :skills, :bio)
	end

end

##i got this format from a lesson on user auth and the names of the methods fit with the structure of my app so i kept them
