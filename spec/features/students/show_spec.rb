require 'rails_helper'


# Then I see the child with that id including the child's attributes:
RSpec.describe "As a visitor" do
  describe "When I visit '/students/:id" do 
    it " I see a student's attributes" do 
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

      # student_2 = Student.create!(
      #           name: "Tanjiro Kamado", 
      #           grade: 7,
      #           in_district: true,
      #           school_id: school_1.id
      # )

      visit "/students/#{student_1.id}"
# save_and_open_page
      expect(page).to have_content("#{student_1.name}")
      expect(page).to have_content("#{student_1.grade}")
      expect(page).to have_content("#{student_1.in_district}")

      # expect(page).to have_content("#{student_2.name}")
      # expect(page).to have_content("#{student_2.grade}")
      # expect(page).to have_content("#{student_2.in_district}")
    end 
    it " I see a link to edit the student" do 
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

      visit "/students/#{student_1.id}"
      # When I visit a Child Show page
      expect(page).to have_link("Update Student")
      # Then I see a link to update that Child "Update Child"
      click_link "Update Student"
# When I click the link
# I am taken to '/child_table_name/:id/edit' where I see a form to edit the child's attributes:
      expect(current_path).to eq("/students/#{student_1.id}/edit")
# When I click the button to submit the form "Update Child"
# Then a `PATCH` request is se '/nt tochild_table_name/:id',
# the child's data is updated,
# and I am redirected to the Child Show page where I see the Child's updated information
    end
  end
end