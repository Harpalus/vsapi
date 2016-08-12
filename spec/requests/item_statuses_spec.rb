require 'rails_helper'

RSpec.describe "ItemStatuses", :type => :request do
  describe "GET /item_statuses" do
    it "works! (now write some real specs)" do
      get item_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
