require 'rails_helper'

feature 'User edits a course' do
  scenario 'sucessfully' do
    course = create(:course)

    visit edit_course_path course

    fill_in 'course[name]', with: 'Elixir'
    fill_in 'course[description]', with: 'Curso irado de Elixir'

    click_on 'Atualizar curso'

    expect(page).to have_content('Elixir')
    expect(page).to have_content('Curso irado de Elixir')
  end
end
