class CustomersController < ApplicationController
  def index
  end
  def show
    @customer = Customer.find(params[:id])
  end

  def destroy
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = customer.find(params[:id])
     if @customer.update(customer_params)
       redirect_to customer_path(@customer.id) 
      else 
       render :edit
     end
  end

  def top
  end
  private
    def customer_params
      params.require(:customer).permit(:last_name, :first_name, :read_last_name, :read_first_name, :post_code, :prefecture, :city, :street, :phone_number, :email, :encrypted_password)
    end
end
