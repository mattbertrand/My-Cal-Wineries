class Region < ApplicationRecord
    has_many :wineries

    validates :name, presence: true, uniqueness: true

    accepts_nested_attributes_for :wineries, reject_if: :all_blank
end
