class CartegoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @caterogy = Category.new(category_params)
    if @category.save
      flash[:notice] = " Successfull created "
      redirect_to @category
    else
      render 'new'
    end
  end

  def index
  end

  def show
  end
  
  def create
  end

  private

  def categories_params
    params.require(:category).permit(:name)
  end
end