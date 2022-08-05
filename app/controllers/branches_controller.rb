class BranchesController < ApplicationController
  before_action :set_branch, only: %i[show edit update destroy]
  
  def index
    @branch = Branches.all
  end

  def show
  end

  def new
    @branch = Branches.new
  end

  def edit
  end

  def create
    @branch = Branches.new(branch_params)
    @branch.save
  end

  def update
    @branch.update(branch_params)
  end

  def destroy
     @branch.destroy
  end

  private
    def set_branch
      @branch = Branches.find(params[:id])
    end

    def branch_params
      params.require(:branch).permit(:description)
    end
end
