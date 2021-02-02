class CreateWineries < ActiveRecord::Migration[6.1]
  def change
    create_table :wineries do |t|
      t.string :name
      t.string :website
      t.string :phone

      t.timestamps
    end
  end
end
