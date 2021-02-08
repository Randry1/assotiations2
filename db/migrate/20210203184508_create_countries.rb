class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name

      t.timestamps
    end
    create_join_table :banans, :countries do |t|
      t.index :banans_id
      t.index :countries_id
    end
  end
end
