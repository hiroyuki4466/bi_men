require 'rails_helper'

RSpec.describe "Attensions", type: :request do
  describe "GET /privacy_policy" do
    it "returns http success" do
      get "/attension/privacy_policy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /terms" do
    it "returns http success" do
      get "/attension/terms"
      expect(response).to have_http_status(:success)
    end
  end

end
