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

  def self.sort_by_students_count
    select('schools.*, count(*) as count').joins(:students).group(:id).order(count: :desc)
  end

  def student_alphabetical
    students.order(name: :asc)
  end
end 