class CreatePaints < ActiveRecord::Migration[5.2]
  def change
    create_table :paints do |t|
      t.string :color

      t.timestamps
    end
  end
end
