class Url < ApplicationRecord
    validates :original_url, presence: true
    validates :hashed_code, presence: true, uniqueness: true
  end
  