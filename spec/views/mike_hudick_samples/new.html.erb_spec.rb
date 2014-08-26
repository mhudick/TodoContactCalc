require 'spec_helper'

describe "mike_hudick_samples/new" do
  before(:each) do
    assign(:mike_hudick_sample, stub_model(MikeHudickSample,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new mike_hudick_sample form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mike_hudick_samples_path, "post" do
      assert_select "input#mike_hudick_sample_name[name=?]", "mike_hudick_sample[name]"
    end
  end
end
