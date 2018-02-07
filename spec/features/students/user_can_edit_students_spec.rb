require 'rails_helper'

describe "user can edit student" do
  describe "user links from index page" do
    it "edits student" do
      student = create(:student)
      visit students_path

      click_on "Edit"

      fill_in "student[name]", with: "Philmeister Omega Spree Jr."
g      click_on "Update Student"

      expect(current_path).to eq(student_path(student))
      expect(page).to have_content("Philmeister Omega Spree Jr.")
    end
  end
end
