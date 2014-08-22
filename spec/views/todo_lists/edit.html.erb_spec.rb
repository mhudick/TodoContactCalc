require 'spec_helper'

describe "todo_lists/edit" do
  before(:each) do
    @todo_list = assign(:todo_list, stub_model(TodoList,
      :title => "MyString",
      :description => "MyString",
      :text => "MyString",
      :first_value => "MyString",
      :double => "MyString",
      :second_value => "MyString",
      :double => "MyString",
      :total => "MyString",
      :double => "MyString",
      :address => "MyString",
      :text => "MyString",
      :phone_number => "MyString",
      :string => "MyString",
      :first_name => "MyString",
      :string => "MyString",
      :last_name => "MyString",
      :string => "MyString"
    ))
  end

  it "renders the edit todo_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", todo_list_path(@todo_list), "post" do
      assert_select "input#todo_list_title[name=?]", "todo_list[title]"
      assert_select "input#todo_list_description[name=?]", "todo_list[description]"
      assert_select "input#todo_list_text[name=?]", "todo_list[text]"
      assert_select "input#todo_list_first_value[name=?]", "todo_list[first_value]"
      assert_select "input#todo_list_double[name=?]", "todo_list[double]"
      assert_select "input#todo_list_second_value[name=?]", "todo_list[second_value]"
      assert_select "input#todo_list_double[name=?]", "todo_list[double]"
      assert_select "input#todo_list_total[name=?]", "todo_list[total]"
      assert_select "input#todo_list_double[name=?]", "todo_list[double]"
      assert_select "input#todo_list_address[name=?]", "todo_list[address]"
      assert_select "input#todo_list_text[name=?]", "todo_list[text]"
      assert_select "input#todo_list_phone_number[name=?]", "todo_list[phone_number]"
      assert_select "input#todo_list_string[name=?]", "todo_list[string]"
      assert_select "input#todo_list_first_name[name=?]", "todo_list[first_name]"
      assert_select "input#todo_list_string[name=?]", "todo_list[string]"
      assert_select "input#todo_list_last_name[name=?]", "todo_list[last_name]"
      assert_select "input#todo_list_string[name=?]", "todo_list[string]"
    end
  end
end
