class CustomersController < ApplicationController
  def index
    @customers = Customer.all
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
end