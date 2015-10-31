require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "POST #create" do
    it "returns http success" do
      user = create(:user)
      sign_in user
      item = user.Item.new
      post :create
      expect(response).to have_http_status(:success)
    end
  end
  
  #describe "DELETE #destroy" do
    #it "returns http success" do
      #sign_in user
      #delete :destroy
      #expect(response).to have_http_status(:success)
    #end
  #end
end
