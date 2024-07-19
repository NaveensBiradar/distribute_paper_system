class CustomersController < ApplicationController
  # before_action :set_customer, only: %i[ show update destroy ]

  # GET /customers
  def index
    @customers = Customer.all

    render json: @customers
  end

  # GET /customers/1
  def show
     @customer = Customer.find(params[:id])
    render json: @customer
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created, location: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customers/1
  def destroy
    @customer = Customer.find(params[:id])
    @deleted_user = @customer.destroy

    if customer.nil?
      render json: @customer.errors, status: :unprocessable_entity
    else
      render json: @deleted_user
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      puts "---------#{params}"
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :email, :phone )
    end
end
