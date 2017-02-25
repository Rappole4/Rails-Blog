#Used to create user sessions
class SessionsController < ApplicationController
  def new

  end
  def create
  	user = User.find_by(username: params[:session][:username])
  	if user && User.find_by(password: params[:session][:password])
  		log_in user
  		redirect_to user
  	else
  		flash.now[:notice] = "YOU ARE AN IMPOSTER"
  		render 'new'
  	end
  end
  def destroy
    session.destroy
  	redirect_to '/login'
  end

end
