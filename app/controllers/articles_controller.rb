class ArticlesController < ApplicationController
before_action :find_author, only: [:show, :new, :create, :edit]

  def index
     if params[:author_id]
       @articles = Author.find(params[:author_id]).articles.order('updated_at desc')
     else
       @articles = Article.order('updated_at desc')
     end
  end

	def edit
		@article.save!
	end

	def new
		@articles = Article.new
	end

	def show
		@articles = Article.find(params[:id])
	end

	def create
		@article = Article.new(article_params)
	end

	def article_params
		params.require(:body, :title)
	end

end


