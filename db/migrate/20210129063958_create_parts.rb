class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.timestamps
    end
    create_join_table :assemblies, :parts do |t|
      t.index :acts_id
      t.index :parts_id
    end
  end
end