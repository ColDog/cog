class ArticlesController < ApplicationController
  def index
    @articles = Article.search(params[:query])
  end

  def show
    @article = Article.find(params[:id])
  end
end
