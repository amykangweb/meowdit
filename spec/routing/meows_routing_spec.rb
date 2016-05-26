require "rails_helper"

RSpec.describe MeowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/meows").to route_to("meows#index")
    end

    it "routes to #new" do
      expect(:get => "/meows/new").to route_to("meows#new")
    end

    it "routes to #show" do
      expect(:get => "/meows/1").to route_to("meows#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/meows/1/edit").to route_to("meows#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/meows").to route_to("meows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/meows/1").to route_to("meows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/meows/1").to route_to("meows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/meows/1").to route_to("meows#destroy", :id => "1")
    end

  end
end
