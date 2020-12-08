class StudentsController < ApplicationController
  def index 
    @students = Student.all
  end

  def show 
    # require 'pry'; binding.pry
   @student =  Student.find(params[:id])
  end

  def edit 
    @student =  Student.find(params[:id])
  end

  def update  
    # require 'pry'; binding.pry
    @student =  Student.find(params[:id])
    @student.update({
      name: params[:name], 
      grade: params[:grade], 
      in_district: params[:in_district]
    })

    redirect_to "/students/#{@student.id}"
  end

  def destroy
    Student.destroy(params[:id])
    redirect_to '/students'
  end
end 