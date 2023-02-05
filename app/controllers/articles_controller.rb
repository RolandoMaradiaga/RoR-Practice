class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params.require(:article).permit([:title, :description]))
    if @article.save
      flash[:notice] = "Article was created Successfully"
      redirect_to @article
    else
      render 'new'
    end
    #render plain: @article.inspect this helps you find what are you sending to db
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit([:title, :description]))
    redirect_to @article
    else
      render 'edit'
    end
  end


end