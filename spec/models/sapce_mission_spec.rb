require 'rails_helper'

describe SpaceMission, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :trip_length }
  end
  describe 'relationships' do
    it { should have_many(:astronauts)}
  end
end
