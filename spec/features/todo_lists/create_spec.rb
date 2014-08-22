require 'spec_helper'

describe 'creating todo lists' do
  it 'redirects to the todo list index page on success' do
    visit '/todo_lists'
    click_link "New Todo list"
    expect(page).to have_content("New To do list")
    fill_in "Title", with: "My Todo list"
    fill_in "Description", with: "a fun thing"
    click_link "Create Todo list"
    expect(page).to have_content("Todo list was successfully created.")
  end
end
