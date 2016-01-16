class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user])
		if @user.save
			flash[:notice] = "Your account was created"
			redirect_to @user
		else
			flash[:notice] = "There was a problem"
			redirect_to_new_user_path	
		end
	end

	def edit
	end

	def update
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
		else

		end
		redirect_to users_path	
	end
end
