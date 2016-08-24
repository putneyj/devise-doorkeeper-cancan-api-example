# frozen_string_literal: true
describe 'API Signup' do
  describe 'POST /api/signup' do
    context 'with valid params' do
      it 'creates User' do
        post String.new('/api/signup'),
          params: {
            email: 'user@example.com',
            password: '12345678'
          },
          as: :json

        user = User.first
        expect(user.email).to eq 'user@example.com'

        expect(json).to eq user_helper(user)
        expect(response.status).to eq 201
      end
    end

    context 'with invalid params' do
      it 'does not create User' do
        post String.new('/api/signup'),
          params: {
            email: 'invalid',
            password: ''
          },
          as: :json

        expect(User.count).to eq 0

        expect(json).to eq('errors' => { 'email' => ['is invalid'], 'password' => ["can't be blank"] })
        expect(response.status).to eq 422
      end
    end
  end
end
