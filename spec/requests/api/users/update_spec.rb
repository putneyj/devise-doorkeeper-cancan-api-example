# frozen_string_literal: true
describe 'API Users' do
  describe 'PATCH /api/users/:id' do
    context 'when User exists' do
      let(:user) do
        create :user,
          email: 'old@example.com'
      end

      context 'with valid params' do
        it 'updates User' do
          patch_as_user String.new("/api/users/#{user.id}"), email: 'new@example.com'

          user.reload
          expect(user.email).to eq 'new@example.com'

          expect(json).to eq user_helper(user)
          expect(response.status).to eq 200
        end
      end

      context 'with invalid params' do
        it 'does not update User' do
          patch_as_user String.new("/api/users/#{user.id}"), email: 'invalid'

          user.reload
          expect(user.email).to eq 'old@example.com'

          expect(json).to eq('errors' => { 'email' => ['is invalid'] })
          expect(response.status).to eq 422
        end
      end

      context 'when user does not exist' do
        it 'does not update User' do
          patch_as_user String.new('/api/users/0')

          expect(json).to eq('errors' => ["Couldn't find User with 'id'=0"])
          expect(response.status).to eq 404
        end
      end

      context 'when user does not have access' do
        let(:other_user) { create :user }

        it 'does not update User' do
          patch_as_user String.new("/api/users/#{other_user.id}")

          user.reload
          expect(user.email).to eq 'old@example.com'

          expect(json).to eq('errors' => ['You are not authorized to access this page.'])
          expect(response.status).to eq 403
        end
      end
    end
  end
end
