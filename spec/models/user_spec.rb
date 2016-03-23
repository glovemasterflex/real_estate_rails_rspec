require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    User = User.create(email: 'hello@hello.com', password_digest: 'poop')
    it { should validate_presence_of :email}
    it { should validate_presence_of :password_digest}

  end
end