require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Assotiation tests
  # Test that the Todo model has a 1:many relationship with items.
  it { should have_many(:items).dependent(:destroy) }

  # Validation tests
  # Ensure that the column title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
