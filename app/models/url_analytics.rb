class UrlAnalytics < ApplicationRecord
    validates :timestamp, presence: true
    validates :hashed_code, presence: true
    validates :geolocation, presence: true
  end
  