class CreateActs < ActiveRecord::Migration[5.2]
  def change
    create_table :acts do |t|
      t.integer :number
      t.string :comment

      t.timestamps
    end
  end
end
