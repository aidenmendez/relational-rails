class SchoolStudentsController < ApplicationController
  def index 
    # require 'pry'; binding.pry
    @school = School.find(params[:id])
  end
end 