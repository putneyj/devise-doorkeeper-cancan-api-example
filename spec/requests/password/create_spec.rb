# frozen_string_literal: true
describe 'API Password' do
  describe 'POST /users/password' do
    context 'when User exists' do
      let(:user) { create(:user) }

      it 'initializes reset password token and sends email' do
        expect(user.reset_password_token.present?).to eq false
        expect(ActionMailer::Base.deliveries.count).to eq 0

        post String.new('/users/password'),
          params: { user: { email: user.email } },
          as: :json

        user.reload
        expect(user.reset_password_token.present?).to eq true

        expect(ActionMailer::Base.deliveries.count).to eq 1
        delivery = ActionMailer::Base.deliveries.first
        expect(delivery.to).to eq [user.email]
        expect(delivery.body).to include('reset_password_token')

        expect(json).to eq({})
        expect(response.status).to eq 201
      end
    end

    context 'when User does not exist' do
      it 'returns errors' do
        post String.new('/users/password'),
          params: { user: { email: 'inexisting@example.com' } },
          as: :json

        expect(ActionMailer::Base.deliveries.count).to eq 0

        expect(json).to eq('errors' => { 'email' => ['not found'] })
        expect(response.status).to eq 422
      end
    end
  end
end
