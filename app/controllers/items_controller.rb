class ItemsController < ApplicationController
  before_action :set_item, only: %i[show edit update destroy]
  
  def index
    @item = Items.all
  end

  def show
  end

  def new
    @item = Items.new
  end

  def edit
  end

  def create
    @item = Items.new(item_params)
    @item.save
  end

  def update
    @item.update(item_params)
  end

  def destroy
     @item.destroy
  end

  private
    def set_item
      @item = Items.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:description)
    end
end
