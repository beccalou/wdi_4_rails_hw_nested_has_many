class ArticlesController < ApplicationController


  def index
     if params[:id]
       @articles = Author.find(params[:id]).articles.order('updated_at desc')
     else
       @articles = Article.order('updated_at desc')
     end
  end

	def edit
		@article = Article.find(params[:id])
	end

	def new
		@articles = Article.new
	end

	def show
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(article_params)
	end

	def article_params
		params.require(:body, :title)
	end

end


