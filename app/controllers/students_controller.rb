class StudentsController < ApplicationController
  def index 
    if params[:grade] 
      @students = Student.student_by_grade(params[:grade])
    else 
      @students = Student.in_district_sorted_name_sorted
    end
  end 

  def show 
   @student =  Student.find(params[:id])
  end

  def edit 
    @student =  Student.find(params[:id])
  end

  def update  
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