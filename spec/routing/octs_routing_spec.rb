require "rails_helper"

RSpec.describe OctsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/octs").to route_to("octs#index")
    end

    it "routes to #new" do
      expect(:get => "/octs/new").to route_to("octs#new")
    end

    it "routes to #show" do
      expect(:get => "/octs/1").to route_to("octs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/octs/1/edit").to route_to("octs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/octs").to route_to("octs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/octs/1").to route_to("octs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/octs/1").to route_to("octs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/octs/1").to route_to("octs#destroy", :id => "1")
    end

  end
end
