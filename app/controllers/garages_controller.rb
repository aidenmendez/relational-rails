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

  def edit
    @garage = Garage.find(params[:id])
  end

  def update
    garage = Garage.find(params[:id])
    garage.update({
      name: params[:garage][:name],
      address: params[:garage][:address],
      spot_count: params[:garage][:spot_count],
      cost: params[:garage][:spot_count]
    })
    garage.save!

    redirect_to "/garages/#{garage.id}"
  end
end