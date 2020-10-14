class ArticlesController < ApplicationController

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
    @article = Article.new(
    title: params[:article][:title],
    body: params[:article][:body]
    )
    @article.save
    redirect_to article_path(@article)
  end
end
