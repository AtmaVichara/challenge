require "rails_helper"

describe "user can sees single student" do
  describe "user navigates to student show page" do
    describe "user sees single student" do
      student = create(:student)
      visit student_path(student)

      expect(page).to have_content(student.name)
    end
  end
end