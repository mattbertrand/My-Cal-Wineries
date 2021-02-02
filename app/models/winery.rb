class Winery < ApplicationRecord
  belongs_to :user
  belongs_to :county
end
