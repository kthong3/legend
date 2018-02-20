class AddReference < ActiveRecord::Migration[5.1]
  def change
    add_reference :places, :map, foreign_key: true
  end
end
