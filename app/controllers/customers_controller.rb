class CustomersController < ApplicationController
  def index
    @customers = Customer.sort_by_bool_then_created_at
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    customer = Customer.find(params[:id])
    customer.update!({
      name: params[:name],
      license_plate: params[:license_plate],
      currently_parked: params[:currently_parked],
      member_since: params[:member_since]
    })
    redirect_to "/customers/#{customer.id}"
  end

  def destroy
    customer = Customer.find(params[:id])
    customer.destroy
    redirect_to '/customers'
  end
end