require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when user has data' do
    it 'must be valid' do
      user = User.new(name: 'test', email: 'test@test.com.br')
      expect(user.valid?).to be_truthy
    end
  end

  context 'when user does not has data' do
    it 'must be invalid' do
      user = User.new(name: '', email: '')
      expect(user.valid?).to be_falsey
    end
  end
end
