# Used to control posts
class PostsController < ApplicationController
	def show
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.all
	end

	def create
		@post = Post.create(post: params[:post][:post], user_id: 1)	
		p @post, params[:post]
		redirect_to '/index'
	end
	def destroy
		begin
			@post = Post.find(params[:id])
		rescue
		end
		if @post && @post.destroy
			flash[:notice] = "Comment destroyed"
			redirect_to '/index'
		end
	end
end
