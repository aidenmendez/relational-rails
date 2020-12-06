class SchoolStudentsController < ApplicationController
  def index 
    # require 'pry'; binding.pry
    @school = School.find(params[:id])
  end

  def new 
    @school = School.find(params[:id])
  end

  def create  
    # require 'pry'; binding.pry
    @school = School.find(params[:id])
    student = Student.new({
      name: params[:name], 
      grade: params[:grade], 
      in_district: params[:in_district], 
      school_id: @school.id
    })

    student.save 

    redirect_to "/schools/#{@school.id}/students"
      # redirect_to "/schools/:id/students"
  end
end 