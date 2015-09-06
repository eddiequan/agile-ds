class LinkUserToIteration < ActiveRecord::Migration
  def up
    add_column :iterations, :user_id, :integer
  end

  def down
    remove_column :iterations, :user_id, :integer
  end
end
