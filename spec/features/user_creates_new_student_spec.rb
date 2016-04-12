require 'rails_helper'

feature 'User creates a new student' do
  scenario 'sucessfully' do
    student = build(:student)

    visit new_student_path

    fill_in 'student[name]', with: student.name

    click_on 'Criar estudante'

    expect(page).to have_content(student.name)
    expect(page).to have_content(student.id)
  end

  scenario 'invalid data' do
    visit new_student_path

    click_on 'Criar estudante'

    expect(page).to have_content "can\'t be blank"
  end
end
