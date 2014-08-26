require 'spec_helper'

describe "mike_hudick_samples/edit" do
  before(:each) do
    @mike_hudick_sample = assign(:mike_hudick_sample, stub_model(MikeHudickSample,
      :name => "MyString"
    ))
  end

  it "renders the edit mike_hudick_sample form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mike_hudick_sample_path(@mike_hudick_sample), "post" do
      assert_select "input#mike_hudick_sample_name[name=?]", "mike_hudick_sample[name]"
    end
  end
end
