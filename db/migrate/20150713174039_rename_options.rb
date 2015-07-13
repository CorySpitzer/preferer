class RenameOptions < ActiveRecord::Migration
  def change
    rename_column :questions, :optionA, :option_a
    rename_column :questions, :optionB, :option_b
  end
end
