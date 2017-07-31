require 'rails_helper'

RSpec.describe Page, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_least(4) }
  it { should validate_presence_of(:description) }
  it { should validate_length_of(:description).is_at_least(4) }
end
