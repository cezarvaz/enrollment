require 'rails_helper'

feature 'User edits a student' do
  scenario 'sucessfully' do
    student = create(:student)

    visit edit_student_path student

    fill_in 'student[name]', with: 'Albert Einstein'

    click_on 'Atualizar estudante'

    expect(page).to have_content('Albert Einstein')
    expect(page).to have_content(student.id)
    expect(page).to have_content(student.status)
  end
end
