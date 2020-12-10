class School < ApplicationRecord
  validates_inclusion_of :is_public, in: [true, false]
  validates_presence_of :name, :number_of_teachers
  has_many :students, dependent: :destroy 

  def registered_students_sorted
    students.order(created_at: :desc).order(name: :asc)
  end

  def self.sorted_schools 
    order(created_at: :desc).order(is_public: :desc)
  end

  def formatted_creation_date
    created_at.to_formatted_s(:long) 
  end

  def student_count
    students.count
  end

  # def self.is_public_sorted
  #   School.all.order(is_public: :desc)
  # end

  def student_alphabetical
    students.order(name: :asc)
  end



  def self.number_of_students_sorted
    sorted = School.all.sort_by { |school| school.students.count }
    sorted.reverse
  end
end 