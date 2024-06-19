require 'rails_helper'

RSpec.describe Url, type: :model do
  it { should validate_presence_of(:original_url) }
  it { should validate_presence_of(:hashed_code) }
  it { should validate_uniqueness_of(:hashed_code) }
end
