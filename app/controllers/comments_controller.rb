class CommentsController < ApplicationController

	def new
		@comments = Comment.new
	end

	def create
		@comments = Comment.new(comment_params)
		@comment.save!
	end

private

	def comment_params
		params.require(:body)
	end

end