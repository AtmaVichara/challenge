require "rails_helper"

describe "user can sees single student" do
  describe "user navigates to student show page" do
    it "user sees single student" do
      student = create(:student)
      address1 = create(:address, student: student)
      address2 = create(:address, student: student)
      visit student_path(student)

      expect(page).to have_content(student.name)
      expect(page).to have_content(address1.street)
      expect(page).to have_content(address2.street)
    end
  end
end
