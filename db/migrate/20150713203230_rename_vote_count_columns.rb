class RenameVoteCountColumns < ActiveRecord::Migration
  def change
    rename_column :questions, :optionA_count, :option_a_count
    rename_column :questions, :optionB_count, :option_b_count
  end
end
