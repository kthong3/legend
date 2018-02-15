class AddForeignKey < ActiveRecord::Migration[5.1]
  def change
    add_reference :maps, :user, foreign_key: true
  end
end
