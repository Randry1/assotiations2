class AddRefToPaint < ActiveRecord::Migration[5.2]
  def change
    add_reference :paints, :car, foreign_key: true
  end
end
