class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :open_hours
      t.integer :latitude
      t.integer :longitude
      t.float :rating
      t.string :address

      t.timestamps
    end
  end
end
