class Admin::ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all
    render layout: 'admin'
  end

  def create
    Article.create(article_params)
    flash[:success] = 'Article saved!'
    redirect_to admin_articles_path
  end

  def update
    Article.find(params[:id]).update(article_params)
    flash[:success] = 'Article updated!'
    redirect_to admin_articles_path
  end

  def destroy
    Article.destroy(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :tagging)
  end

end
