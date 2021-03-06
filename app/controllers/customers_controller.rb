class CustomersController < ApplicationController
  before_action :authenticate_customer!
  skip_before_action :authenticate_customer!, only: [:about]
  before_action :signed_customer_redirect
  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customer_path(@customer)
    else
      @customer_error = "編集内容にエラーがあります"
      render ("customers/edit")
    end
  end

  def about
  end
  private
    def customer_params
      params.require(:customer).permit(:last_name, :first_name, :read_last_name, :read_first_name, :post_code, :prefecture, :city, :street, :phone_number, :email, :password, :password_confirmation)
    end
end
