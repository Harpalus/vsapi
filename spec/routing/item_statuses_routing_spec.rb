require "rails_helper"

RSpec.describe ItemStatusesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/item_statuses").to route_to("item_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/item_statuses/new").to route_to("item_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/item_statuses/1").to route_to("item_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_statuses/1/edit").to route_to("item_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/item_statuses").to route_to("item_statuses#create")
    end

    it "routes to #update" do
      expect(:put => "/item_statuses/1").to route_to("item_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_statuses/1").to route_to("item_statuses#destroy", :id => "1")
    end

  end
end
