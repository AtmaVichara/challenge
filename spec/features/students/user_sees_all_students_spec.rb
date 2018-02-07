require 'rails_helper'

describe 'user can see all students' do
  describe "user naviates to /students" do
    it 'sees all students' do
      student_1 = create(:student)
      student_2 = create(:student)
      student_3 = create(:student)
      visit students_path

      expect(page).to have_content(student_1.name)
      expect(page).to have_content(student_2.name)
      expect(page).to have_content(student_3.name)
    end
  end
end
