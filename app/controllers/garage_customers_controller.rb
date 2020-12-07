class GarageCustomersController < ApplicationController
  def index
    @garage = Garage.find(params[:id])
    @customers = @garage.customers
  end
end
