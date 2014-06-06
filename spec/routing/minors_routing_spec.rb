require "rails_helper"

RSpec.describe MinorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/minors").to route_to("minors#index")
    end

    it "routes to #new" do
      expect(:get => "/minors/new").to route_to("minors#new")
    end

    it "routes to #show" do
      expect(:get => "/minors/1").to route_to("minors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/minors/1/edit").to route_to("minors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/minors").to route_to("minors#create")
    end

    it "routes to #update" do
      expect(:put => "/minors/1").to route_to("minors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/minors/1").to route_to("minors#destroy", :id => "1")
    end

  end
end
