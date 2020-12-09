require 'rails_helper'

RSpec.describe Student, type: :model do 
  describe "relationships" do 
    it { should belong_to :school }
  end 
  describe "validations" do 
    it { should validate_presence_of :name} 
    it { should validate_presence_of :grade}
    # it { should allow_value(nil).for(:is_public) }
  end
  describe "class_methods" do 
    describe '.register_sorted' do 
      it "returns order when student registers" do 
        school_1 = School.create!(
          name: "Strive Prep", 
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

          # @students = [student_1, student_2, student_3]
        expect(Student.register_sorted.first).to eq(Student.first)
      end
    end
  end
end