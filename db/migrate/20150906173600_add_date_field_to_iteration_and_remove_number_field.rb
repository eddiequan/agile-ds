class AddDateFieldToIterationAndRemoveNumberField < ActiveRecord::Migration
  def up
    add_column :iterations, :date, :date
    remove_column :iterations, :number, :integer
  end

  def down
    remove_column :iterations, :date, :date
    add_column :iterations, :number, :integer
  end
end
