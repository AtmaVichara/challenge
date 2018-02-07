require 'rails_helper'

describe "user can create new student" do
  describe "user navigates to new page from index" do
    it "creates new student" do
      visit students_path

      click_on "Create New Student"

      fill_in "student[name]", with: "Bojangles the Rambunctious"
      click_on "Create Student"

      expect(page).to have_content("Bojangles the Rambunctious")
    end
  end
end
