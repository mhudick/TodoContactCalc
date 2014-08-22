require 'spec_helper'

describe 'creating todo lists' do
  it 'redirects to the todo list index page on success' do
    visit '/todo_lists'
    click_link "New Todo list"
    expect(page).to have_content("New To do list")
  end
end
