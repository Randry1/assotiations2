class CreateJoinTableBugTree < ActiveRecord::Migration[5.2]
  def change
    create_join_table :bugs, :trees do |t|
      t.index [:bug_id, :tree_id]
      t.index [:tree_id, :bug_id]
    end
  end
end
