class StudentsController < ApplicationController
  def index 
    @students = Student.all
  end

  def show 
    # require 'pry'; binding.pry
   @student =  Student.find(params[:id])
  end
end 