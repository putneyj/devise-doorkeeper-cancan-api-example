# frozen_string_literal: true
describe 'Admin Ability' do
  subject { ability }
  let(:user) { create(:admin_user) }
  let(:ability) { Ability.new(user) }

  it { is_expected.to have_abilities(:manage).on(:all) }
end
