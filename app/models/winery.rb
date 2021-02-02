class Winery < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 3..30 }
  validates :webiste, presence: true
  validates :phone, presence: true
end
