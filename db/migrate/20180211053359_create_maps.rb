class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
