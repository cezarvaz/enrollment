require 'rails_helper'

feature 'User enrolls a student in a classroom' do
  scenario 'sucessfully' do
    classroom = build(:classroom)

    visit new_classroom_path

    select classroom.course.name, from: 'classroom[course_id]'
    select classroom.student.name, from: 'classroom[student_id]'

    click_on 'Criar classe'

    expect(page).to have_content(classroom.course.name)
    expect(page).to have_content(classroom.student.name)
    expect(page).to have_content(classroom.created_at)
  end

  scenario 'unsucessfully' do
    classroom = build(:classroom)

    visit new_classroom_path

    select classroom.course.name, from: 'classroom[course_id]'

    click_on 'Criar classe'

    expect(page).to have_content "can\'t be blank"
  end
end
