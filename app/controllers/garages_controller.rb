class GaragesController < ApplicationController
  def index
    @garages= Garage.all
  end

  def show
    @garage = Garage.find(params[:id])
  end

  def new
  end

  def create
    garage = Garage.new({
      name: params[:garage][:name],
      address: params[:garage][:address],
      spot_count: params[:garage][:spot_count],
      cost: params[:garage][:cost]
    })
    garage.save!
    redirect_to '/garages' 
  end
end