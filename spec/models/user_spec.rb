require 'rails_helper'

describe User do

  context 'when an admin user' do
    let(:user) { FactoryGirl.create(:user, :admin) }

    it 'should return admin true' do
      expect(user.admin?).to be_truthy
    end
  end

  context 'when a normal user' do
    let(:user) { FactoryGirl.create(:user) }

    it 'should return admin false' do
      expect(user.admin?).to be_falsy
    end
  end


end
