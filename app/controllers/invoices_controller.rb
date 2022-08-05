class InvoicesController < ApplicationController
  before_action :set_invoice, only: %i[show edit update destroy]
  
  def index
    @invoice = Invoices.all
  end

  def show
  end

  def new
    @invoice = Invoices.new
  end

  def edit
  end

  def create
    @invoice = Invoices.new(invoice_params)
    @invoice.save
  end

  def update
    @invoice.update(invoice_params)
  end

  def destroy
     @invoice.destroy
  end

  private
    def set_invoice
      @invoice = Invoices.find(params[:id])
    end

    def invoice_params
      params.require(:invoice).permit(:description)
    end
end
