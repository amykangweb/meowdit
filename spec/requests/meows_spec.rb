require 'rails_helper'

RSpec.describe "Meows", type: :request do
  describe "GET /meows" do
    it "works! (now write some real specs)" do
      get meows_path
      expect(response).to have_http_status(200)
    end
  end
end
