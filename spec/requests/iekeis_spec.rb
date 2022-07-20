require 'rails_helper'

RSpec.describe "Iekeis", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/iekeis/index"
      expect(response).to have_http_status(:success)
    end
  end

end
