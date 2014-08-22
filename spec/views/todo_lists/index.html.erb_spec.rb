require 'spec_helper'

describe "todo_lists/index" do
  before(:each) do
    assign(:todo_lists, [
      stub_model(TodoList,
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
      ),
      stub_model(TodoList,
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
      )
    ])
  end

  it "renders a list of todo_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "First Value".to_s, :count => 2
    assert_select "tr>td", :text => "Double".to_s, :count => 2
    assert_select "tr>td", :text => "Second Value".to_s, :count => 2
    assert_select "tr>td", :text => "Double".to_s, :count => 2
    assert_select "tr>td", :text => "Total".to_s, :count => 2
    assert_select "tr>td", :text => "Double".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
  end
end
