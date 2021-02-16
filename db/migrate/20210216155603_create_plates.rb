class CreatePlates < ActiveRecord::Migration[5.2]
  def change
    create_table :plates do |t|
      t.string :name
      t.belongs_to :homes
      t.belongs_to :streets
      t.timestamps
    end
  end
end
