class Winery < ApplicationRecord
  belongs_to :region
  belongs_to :user
 
  validates :name, presence: true, uniqueness: true, length: { in: 3..50 }
  validates :website, presence: true
  validates :phone, presence: true

  accepts_nested_attributes_for :region, reject_if: :all_blank

  def region_name
    self.region ? self.region.name : "Region not available"
  end
end
