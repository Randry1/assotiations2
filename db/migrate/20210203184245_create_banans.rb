class CreateBanans < ActiveRecord::Migration[5.2]
  def change
    create_table :banans do |t|
      t.string :name

      t.timestamps
    end
  end
end
