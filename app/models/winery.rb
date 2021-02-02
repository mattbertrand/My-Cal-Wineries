class Winery < ApplicationRecord
  belongs_to :region
 
  validates :name, presence: true, uniqueness: true, length: { in: 3..30 }
  validates :website, presence: true
  validates :phone, presence: true

  accepts_nested_attributes_for :region

  def region_name
    self.region ? self.region.name : "Region not available"
  end
end
