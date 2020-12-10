class GaragesController < ApplicationController
  def index
    if params[:sort_bool].present?
      @garages = Garage.sort_by_customer_count
    else
      @garages = Garage.sort_by_bool_then_created_at.filter_min_spots(params[:threshold])
    end
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
      cost: params[:garage][:cost],
      multi_level: params[:garage][:multi_level]
    })
    garage.save!
    redirect_to '/garages' 
  end

  def edit
    @garage = Garage.find(params[:id])
    @checked = Garage.find(params[:id]).multi_level
  end

  def update
    garage = Garage.find(params[:id])
    garage.update!({
      name: params[:name],
      address: params[:address],
      spot_count: params[:spot_count],
      cost: params[:cost],
      multi_level: params[:multi_level]
    })

    redirect_to "/garages/#{garage.id}"
  end

  def destroy
    garage = Garage.find(params[:id])
    garage.destroy
    redirect_to '/garages'
  end
end