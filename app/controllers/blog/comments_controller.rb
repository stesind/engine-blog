require_dependency "blog/application_controller"

module Blog
  class CommentsController < ApplicationController
  	def create
  		@post = Post.find(params[:post_id])
  		@comment = @post.comments.create(params[:comment])
  		flash[:notice] = "Comment has been created!"
  		redirect_to post_path
end
  end
end
