require 'rails_helper'

RSpec.describe "SkillSheets", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/skill_sheets/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /detail" do
    it "returns http success" do
      get "/skill_sheets/detail"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/skill_sheets/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/skill_sheets/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/skill_sheets/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/skill_sheets/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /export" do
    it "returns http success" do
      get "/skill_sheets/export"
      expect(response).to have_http_status(:success)
    end
  end

end
