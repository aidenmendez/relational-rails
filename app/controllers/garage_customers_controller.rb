class GarageCustomersController < ApplicationController
  def index
    @garage = Garage.find(params[:id])
    if params[:alpha_sort].present?
      @customers = @garage.sort_alphabet
    else
      @customers = @garage.customers
    end
  end

  def new
    @garage = Garage.find(params[:id])
  end

  def create
    customer = Customer.new({
      name: params[:name],
      license_plate: params[:license_plate],
      member_since: Date.today.year,
      garage_id: params[:id],
      currently_parked: false
    })
    customer.save!
    redirect_to "/garages/#{params[:id]}/customers"
  end
end
