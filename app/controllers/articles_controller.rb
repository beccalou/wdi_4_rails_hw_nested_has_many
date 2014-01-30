class ArticlesController < ApplicationController

	def index
			@articles = Article.order('updated_at desc')
	end

	def edit
		@article.save!
	end

	def new
		@articles = Article.new
	end

	def create
		@article = Article.new(article_params)
	end

	def article_params
		params.require(:body, :title)
	end

end

