class StudentsController < ApplicationController
  def index 
    if params[:grade] 
      @students = Student.student_by_grade(params[:grade])
    else 
      @students = Student.in_district_sorted
    end
  end 

  def show 
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

  def search 
    # require 'pry'; binding.pry
    # @students = Student.student_by_grade(params[:grade])
    # redirect_to '/students'

  end
end 