class SchoolsController < ApplicationController
  def index 
    if params[:sorted] 
      @schools = School.sort_by_students_count
    else
      @schools = School.sorted_schools
    end 
  end

  def sorted_index
    @schools = School.number_of_students_sorted
  end

  def new

  end
  
  def create 
    school = School.new({
    name: params[:name],
    number_of_teachers: params[:number_of_teachers],
    is_public: params[:is_public]
    })

    school.save

    redirect_to '/schools'
  end

  def show
    @school = School.find(params[:id]) 
  end
  
  def edit 
    @school = School.find(params[:id]) 
  end

  def update
    @school = School.find(params[:id])
    @school.update({
    name: params[:name],
    number_of_teachers: params[:number_of_teachers],
    is_public: params[:is_public]
    })

    @school.save
    redirect_to "/schools/#{@school.id}"
  end

  def destroy 
    School.destroy(params[:id])
    redirect_to '/schools'
  end
end