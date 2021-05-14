class Api::CustomersController < ApplicationController
    def index
        customers = Customer.all
        render json: CustomerSerializer.new(customers)
    end

    def create
        customer = Customer.new(customer_params)
        binding.pry
        if customer.save
            render json: customer, status: :accepted
        else
            render json: {errors: customer.errors.full_messages}, status: :unprocessable_entity
            # server understands context and syntax was correct but was unable to process (error 422 -unprocessable_entity)
        end

    end

    private

    def customer_params
        params.require(:customer).permit(:store_id, :name, :email, :phone, :stravaURL, :bikeStyle)
    end
end

