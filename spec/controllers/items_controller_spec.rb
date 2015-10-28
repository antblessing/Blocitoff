require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      user = create(:user)
      item = create(:item)
      sign_in user
      get :create
      expect(response).to have_http_status(:success)
    end
  end

end
