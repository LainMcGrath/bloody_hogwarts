require 'rails_helper'

RSpec.describe "User can see all courses" do
  it "Can see all courses" do
    student_1 = Student.create( name: "Harry Potter",
                                age: 18,
                                house: "Gryffindor")
    student_2 = Student.create( name: "Hermione Granger",
                                age: 18,
                                house: "Gryffindor")

    student_1_course = student_1.courses.create(name: "History of Magic")
    student_1_course = student_1.courses.create(name: "Care of Magical Creatures")
    student_2_course = student_2.courses.create(name: "History of Magic")
    student_2_course = student_2.courses.create(name: "History of Magic")

    visit "/courses"

    expect(page).to have_content(student_1_course.name)
    expect(page).to have_content(2)

    # expect(page).to have_content("Care of Magical Creatures")
  end
end
