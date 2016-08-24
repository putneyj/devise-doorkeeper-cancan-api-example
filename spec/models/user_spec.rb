# frozen_string_literal: true
require 'rails_helper'

describe User, type: :model do
  describe 'Database' do
    describe 'Columns' do
      it { is_expected.to have_db_column(:email).of_type(:string).with_options(null: false, default: '') }
      it { is_expected.to have_db_column(:encrypted_password).of_type(:string).with_options(null: false, default: '') }
      it { is_expected.to have_db_column(:reset_password_token).of_type(:string) }
      it { is_expected.to have_db_column(:reset_password_sent_at).of_type(:datetime) }
      it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
      it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
      it { is_expected.to have_db_column(:is_admin).of_type(:boolean).with_options(default: false) }
    end

    describe 'Idexes' do
      it { is_expected.to have_db_index(:email).unique(true) }
      it { is_expected.to have_db_index(:reset_password_token).unique(true) }
    end
  end

  describe 'Relations' do
  end

  describe 'Validations' do
  end

  describe 'Scopes' do
  end

  describe 'Class methods' do
  end

  describe 'Callbacks' do
  end

  describe 'Instance Methods' do
  end
end
