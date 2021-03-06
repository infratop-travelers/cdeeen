class Admin::ResignedCustomersController < ApplicationController
    before_action :authenticate_admin!

    def update
        customer = Customer.find(params[:id])
        customer.update(resigned: true)

        resigned_customer = ResignedCustomer.new
        resigned_customer.customer_id = customer.id
        resigned_customer.save

        redirect_to admin_customers_path
    end
end
