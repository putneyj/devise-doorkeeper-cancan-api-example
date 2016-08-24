# frozen_string_literal: true
describe 'User Ability' do
  describe 'access to User' do
    let(:user) { create(:user) }
    let(:ability) { Ability.new(user) }
    subject { ability }

    let(:other_user) { create :user }

    it { is_expected.to have_abilities(:manage).on(user) }
    it { is_expected.not_to have_abilities(:manage).on(other_user) }
  end
end
