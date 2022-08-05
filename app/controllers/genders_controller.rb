class GendersController < ApplicationController
  before_action :set_genders, only: %i[show edit update destroy]
  
  def index
    @gender = Genders.all
  end

  def show
  end

  def new
    @gender = Genders.new
  end

  def edit
  end

  def create
    @gender = Genders.new(genders_params)
    @gender.save
  end

  def update
    @gender.update(genders_params)
  end

  def destroy
     @gender.destroy
  end

  private
    def set_genders
      @gender = Genders.find(params[:id])
    end

    def genders_params
      params.require(:gender).permit(:description)
    end
end
