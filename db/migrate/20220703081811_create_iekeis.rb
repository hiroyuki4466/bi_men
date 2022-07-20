class CreateIekeis < ActiveRecord::Migration[6.1]
  def change
    create_table :iekeis do |t|

      t.timestamps
    end
  end
end
