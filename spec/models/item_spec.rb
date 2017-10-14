require 'rails_helper'

RSpec.describe Item, type: :model do
  # Assotiation tests
  # Test that the Item model belongs to a Todo.
  it { should belong_to(:todo) }

  # Validation tests
  # Ensure that the column name is present before saving
  it { should validate_presence_of(:name) }
end
