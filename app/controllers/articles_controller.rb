class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new

  end


  def create
    @article = Article.new(params.require(:article).permit([:title, :description]))
    @article.save
    redirect_to @article
    #render plain: @article.inspect this helps you finde what are you sending to db
  end
end