class CategoriesController < ApplicationController
  before_action :set_categories, only: %i[show edit update destroy]
  
  def index
    @category = Categories.all
  end

  def show
  end

  def new
    @category = Categories.new
  end

  def edit
  end

  def create
    @category = Categories.new(categories_params)
    @category.save
  end

  def update
    @category.update(categories_params)
  end

  def destroy
     @category.destroy
  end

  private
    def set_categories
      @category = Categories.find(params[:id])
    end

    def categories_params
      params.require(:category).permit(:description)
    end
end
