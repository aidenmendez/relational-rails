class Student < ApplicationRecord
  validates_inclusion_of :in_district, in: [true, false]
  validates_presence_of :name, :grade
  belongs_to :school

  def self.register_sorted
    Student.all.order(:created_at)
  end

  def formatted_registration_date
    created_at.to_formatted_s(:long) 
  end

  def self.in_district_sorted_name_sorted
    Student.all.order(in_district: :desc).order(name: :asc)
  end

  def self.student_by_grade(number_grade)
    Student.all.where(grade: number_grade).order(in_district: :desc)
  end
end 