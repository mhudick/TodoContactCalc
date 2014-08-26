require 'spec_helper'

describe "MikeHudickSamples" do
  describe "GET /mike_hudick_samples" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get mike_hudick_samples_path
      response.status.should be(200)
    end
  end
end
