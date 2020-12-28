require 'rails_helper'

RSpec.describe "Administrators", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/administrators/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/administrators/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/administrators/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new_confirm" do
    it "returns http success" do
      get "/administrators/new_confirm"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update_confirm" do
    it "returns http success" do
      get "/administrators/update_confirm"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new_complete" do
    it "returns http success" do
      get "/administrators/new_complete"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update_complete" do
    it "returns http success" do
      get "/administrators/update_complete"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /detail" do
    it "returns http success" do
      get "/administrators/detail"
      expect(response).to have_http_status(:success)
    end
  end

end
