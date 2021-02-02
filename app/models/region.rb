class Region < ApplicationRecord
    has_many :wineries

    validates :name, presence: true, uniqueness: true
end
