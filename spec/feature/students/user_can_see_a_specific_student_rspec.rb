require 'rails_helper'

RSpec.describe "User can see a specific students" do
  it "can see a students id page" do
    student_1 = Student.create( name: "Harry Potter",
                                age: 18,
                                house: "Gryffindor")
    visit "/students/#{student_1.id}"

    expect(page).to have_content("History of Magic")
    expect(page).to have_content("Care of Magical Creatures")
  end
end
