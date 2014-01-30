class AuthorsController < ApplicationController

	def index
		@authors = Author.all
	end

	def show
		@authors = Author.find_by_id(:id).articles
	end


private

	def author_params
		params.require(:name, :email)
	end
end

