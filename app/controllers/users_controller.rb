class UsersController < ApplicationController
	# Main page for users
	def show
		@user = User.find(params[:id])
		@posts = Post.all
	end
	# Main page for admins
	def index
		@users = User.all
		@posts = Post.all
		@comments = Comment.all
	end
	# Used for creating new users
	def create
		User.create(params.require(:user).permit(:fname,:lname,:username,:email,:address,:password))
		flash[:notice] = "Congrats on your new account"
		redirect_to '/'
	end
	# Used for deleting users
	def destroy
		begin
			@user = User.find(params[:id])
		rescue
		end
		if @user && @user.destroy
			flash[:notice] = "User destroyed"
			redirect_to '/'
		end
	end
	# Used for editing information
	def edit
		@user = User.find(params[:id])
	end
	def update
		current_user.update(params.require(:user).permit(:lname,:email,:address,:password))
		flash[:notice] = "Profile updated"
		redirect_to current_user, params: {something: "value"}

	end
	# Used for checking and logging in users
	def checklogin
		@login = User.where("username = '#{params[:username]}'").first

		p params, @login

		if @login && @login.password == params[:password]
			session[:user_id] = @login.id
		else
			flash[:notice] = "YOU ARE AN IMPOSTER"
			@login = nil
			redirect_to '/'
		end
	end
end
