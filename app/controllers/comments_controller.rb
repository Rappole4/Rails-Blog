# Used to control comments
class CommentsController < ApplicationController
	def show
		@comment = Comment.find(params[:id])
	end

	def index
		@comments = Comment.all
	end

	def create
		@comment = Comment.create(comment: params[:comment][:comment], user_id: current_user.id, post_id: params[:postcom])	
		p @comment, params[:comment]
		redirect_to current_user, params: {something: "value"}
	end
	def destroy
		begin
			@comment = Comment.find(params[:id])
		rescue
		end
		if @comment && @comment.destroy
			flash[:notice] = "Comment destroyed"
			redirect_to '/index'
		end
	end
end
