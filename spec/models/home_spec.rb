require 'rails_helper'

RSpec.describe Home, type: :model do
  describe 'associations' do
    home = Home.create(bed: 4, bath: 2, sqft: 1492, sold: false)
    it { should belong_to :agent}
    it { should have_one :address}
    it { expect(home).to have_one(:address).dependent(:destroy) }

  end
end