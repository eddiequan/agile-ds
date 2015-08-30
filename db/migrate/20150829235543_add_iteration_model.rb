class AddIterationModel < ActiveRecord::Migration
  def up
    create_table :iterations do |t|
      t.integer :number
      t.integer :points_done
      t.integer :points_done_for_release
      t.integer :points_planned
      t.integer :defects_completed
      t.integer :defects_incomplete
    end
  end

  def down
    drop_table :iterations
  end
end
