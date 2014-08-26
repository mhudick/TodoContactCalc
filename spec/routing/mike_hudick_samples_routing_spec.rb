require "spec_helper"

describe MikeHudickSamplesController do
  describe "routing" do

    it "routes to #index" do
      get("/mike_hudick_samples").should route_to("mike_hudick_samples#index")
    end

    it "routes to #new" do
      get("/mike_hudick_samples/new").should route_to("mike_hudick_samples#new")
    end

    it "routes to #show" do
      get("/mike_hudick_samples/1").should route_to("mike_hudick_samples#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mike_hudick_samples/1/edit").should route_to("mike_hudick_samples#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mike_hudick_samples").should route_to("mike_hudick_samples#create")
    end

    it "routes to #update" do
      put("/mike_hudick_samples/1").should route_to("mike_hudick_samples#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mike_hudick_samples/1").should route_to("mike_hudick_samples#destroy", :id => "1")
    end

  end
end
