class AuthorsController < ApplicationController

	def index
		@authors = Author.all
	end

	def show
		@author = Author.find(params[:id])
	end


private

	def author_params
		params.require(:name, :email)
	end
end

