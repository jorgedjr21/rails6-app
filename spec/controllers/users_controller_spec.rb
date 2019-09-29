require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let!(:valid_params) {
    {
      name: 'NotRun',
      email: 'not-run@test.com'
    }
  }

  let!(:invalid_params) {
    {
      name: '',
      email: ''
    }
  }

  describe 'POST #create' do
    context 'with valid params' do
      it 'must create the user' do
        expect { post :create, params: { user: valid_params } }.to change(User, :count).by(1)
      end

      it 'must have 200 response' do
        post :create, params: { user: valid_params }

        expect(response).to have_http_status(:ok)
      end
    end

    context 'with invalid params' do
      it 'must create the user' do
        expect { post :create, params: { user: invalid_params } }.not_to change(User, :count)
      end

      it 'must have 200 response' do
        post :create, params: { user: invalid_params }

        expect(response).to have_http_status(:bad_request)
      end
    end
  end
end
