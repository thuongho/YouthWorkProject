require 'rails_helper'

RSpec.describe "Minors", :type => :request do
  describe "GET /minors" do
    it "works! (now write some real specs)" do
      get minors_path
      expect(response.status).to be(200)
    end
  end
end
