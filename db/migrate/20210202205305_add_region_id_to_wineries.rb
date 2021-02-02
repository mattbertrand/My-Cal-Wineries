class AddRegionIdToWineries < ActiveRecord::Migration[6.1]
  def change
    add_reference :wineries, :region, null: false, foreign_key: true
  end
end
