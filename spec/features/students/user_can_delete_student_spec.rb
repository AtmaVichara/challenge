require 'rails_helper'

describe "user can delete student" do
  describe "user clicks delete link on index page" do
    it "deletes student" do
      student = create(:student)
      student2 = create(:student, name: 'Othelia Marrygold')

      visit students_path

      find(".student-#{student.id}").click_on "Delete"
      
      expect(page).to_not have_content(student.name)
      expect(page).to have_content(student2.name)
    end
  end
end
