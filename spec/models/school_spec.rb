require 'rails_helper'

RSpec.describe School do 
  describe 'relationships' do 
    it { should have_many :students }
  end
  describe 'class methods' do 
    it ".number of students sorted" do 
      school_1 = School.create!(
          name: "Strive Prep", 
          number_of_teachers: 30, 
          is_public: false       
        )
      school_2 = School.create!(
          name: "MSU Denver", 
          number_of_teachers: 30, 
          is_public: false       
        )
      school_3 = School.create!(
          name: "Edgewater", 
          number_of_teachers: 30, 
          is_public: false       
        )

      student_1 = Student.create!(
                name: "Naruto Uzumaki", 
                grade: 8, 
                in_district: true, 
                school_id: school_1.id
      )

      student_2 = Student.create!(
                name: "Tanjiro Kamado", 
                grade: 7,
                in_district: true,
                school_id: school_1.id 
      )

      student_3 = Student.create!(
                name: "Itachi Uchiha", 
                grade: 7,
                in_district: true,
                school_id: school_1.id 
      )

      student_4 = Student.create!(
                name: "Mikasa Ackerman", 
                grade: 7,
                in_district: true,
                school_id: school_1.id 
      )
      student_5 = Student.create!(
                name: "Armin", 
                grade: 7,
                in_district: true,
                school_id: school_2.id 
      )
      student_6 = Student.create!(
                name: "Eren", 
                grade: 7,
                in_district: true,
                school_id: school_3.id 
      )
      student_7 = Student.create!(
                name: "Bertholdt", 
                grade: 7,
                in_district: true,
                school_id: school_3.id 
      )

      expect(School.sort_by_students_count).to eq([school_1, school_2, school_3])
    end
  end
end 
