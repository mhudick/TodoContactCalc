require 'spec_helper'

describe "todo_lists/show" do
  before(:each) do
    @todo_list = assign(:todo_list, stub_model(TodoList,
      :title => "Title",
      :description => "Description",
      :text => "Text",
      :first_value => "First Value",
      :double => "Double",
      :second_value => "Second Value",
      :double => "Double",
      :total => "Total",
      :double => "Double",
      :address => "Address",
      :text => "Text",
      :phone_number => "Phone Number",
      :string => "String",
      :first_name => "First Name",
      :string => "String",
      :last_name => "Last Name",
      :string => "String"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/Text/)
    rendered.should match(/First Value/)
    rendered.should match(/Double/)
    rendered.should match(/Second Value/)
    rendered.should match(/Double/)
    rendered.should match(/Total/)
    rendered.should match(/Double/)
    rendered.should match(/Address/)
    rendered.should match(/Text/)
    rendered.should match(/Phone Number/)
    rendered.should match(/String/)
    rendered.should match(/First Name/)
    rendered.should match(/String/)
    rendered.should match(/Last Name/)
    rendered.should match(/String/)
  end
end
