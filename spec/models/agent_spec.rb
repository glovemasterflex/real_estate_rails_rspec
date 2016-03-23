require 'rails_helper'

RSpec.describe Agent, type: :model do
  describe 'associations' do
    agent = Agent.create(name: 'Daniel')
    it { should have_many :homes}
    it { expect(agent).to have_many(:homes).dependent(:destroy) }

  end
end