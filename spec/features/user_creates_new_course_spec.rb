require 'rails_helper'

feature 'User creates a new course' do
  scenario 'sucessfully' do
    course = build(:course)

    visit new_course_path

    fill_in 'course[name]', with: course.name
    fill_in 'course[description]', with: course.description

    click_on 'Criar curso'

    expect(page).to have_content(course.name)
    expect(page).to have_content(course.description)
  end

  scenario 'invalid data' do
    visit new_course_path

    click_on 'Criar curso'

    expect(page).to have_content "can\'t be blank"
  end
end
