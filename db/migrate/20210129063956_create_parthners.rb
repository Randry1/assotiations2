class CreateParthners < ActiveRecord::Migration[5.2]
  def change
    create_table :parthners do |t|
      t.string :name

      t.timestamps
    end
  end
end
