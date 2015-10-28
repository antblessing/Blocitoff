require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET show" do
    it "returns http status success" do
      user = create(:user)
      sign_in user
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
