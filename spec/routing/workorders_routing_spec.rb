require "rails_helper"

RSpec.describe WorkordersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/workorders").to route_to("workorders#index")
    end

    it "routes to #new" do
      expect(:get => "/workorders/new").to route_to("workorders#new")
    end

    it "routes to #show" do
      expect(:get => "/workorders/1").to route_to("workorders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/workorders/1/edit").to route_to("workorders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/workorders").to route_to("workorders#create")
    end

    it "routes to #update" do
      expect(:put => "/workorders/1").to route_to("workorders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workorders/1").to route_to("workorders#destroy", :id => "1")
    end

  end
end
