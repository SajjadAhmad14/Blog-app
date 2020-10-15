class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end


  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    Article.delete(@article)
    redirect_to articles_path
  end
end
