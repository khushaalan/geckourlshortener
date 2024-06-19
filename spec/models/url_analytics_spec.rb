require 'rails_helper'

RSpec.describe UrlAnalytics, type: :model do
  it { should validate_presence_of(:timestamp) }
  it { should validate_presence_of(:hashed_code) }
  it { should validate_presence_of(:geolocation) }
end
