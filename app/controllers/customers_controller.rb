class CustomersController < ApplicationController
  before_action :set_customers, only: %i[show edit update destroy]
  
  def index
    @customer = Customers.all
  end

  def show
  end

  def new
    @customer = Customers.new
  end

  def edit
  end

  def create
    @customer = Customers.new(customers_params)
    @customer.save
  end

  def update
    @customer.update(customers_params)
  end

  def destroy
     @customer.destroy
  end

  private
    def set_customers
      @customer = Customers.find(params[:id])
    end

    def customers_params
      params.require(:customer).permit(:description)
    end
end
