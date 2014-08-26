require 'spec_helper'

describe "mike_hudick_samples/index" do
  before(:each) do
    assign(:mike_hudick_samples, [
      stub_model(MikeHudickSample,
        :name => "Name"
      ),
      stub_model(MikeHudickSample,
        :name => "Name"
      )
    ])
  end

  it "renders a list of mike_hudick_samples" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
