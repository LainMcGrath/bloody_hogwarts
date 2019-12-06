require 'rails_helper'

RSpec.describe "User can see all students" do
  it "can see all students" do
    student_1 = Student.create( name: "Harry Potter",
                                age: 18,
                                house: "Gryffindor")
    visit "/students"

    within "#student-#{student_1.id}" do
      expect(page).to have_content("Harry Potter")
      expect(page).to have_content(18)
      expect(page).to have_content("Gryffindor")
    end
  end
end
