require 'spec_helper'

describe "mike_hudick_samples/show" do
  before(:each) do
    @mike_hudick_sample = assign(:mike_hudick_sample, stub_model(MikeHudickSample,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
