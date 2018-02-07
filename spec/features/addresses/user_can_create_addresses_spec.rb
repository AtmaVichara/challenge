require 'rails_helper'

describe "user can create addresses" do
  describe "from the student show page" do
    it "creates new address" do
      student = create(:student)
      visit student_path(student)

      click_on "Add New Address"

      fill_in "address[description]", with: "It's desolate and there is no roof, but it's home"
      fill_in "address[street]", with: "Off of the beaten path"
      fill_in "address[state]", with: "Colorado"
      fill_in "address[zipcode]", with: 123456
      click_on "Create Address"

      expect(current_path).to eq(student_path(student))
      expect(page).to have_content("It's desolate and there is no roof, but it's home")
      expect(page).to have_content("Off of the beaten path")
      expect(page).to have_content("Colorado")
    end
  end
end
