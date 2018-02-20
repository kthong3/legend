class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :full_street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
