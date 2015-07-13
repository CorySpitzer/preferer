class ChangeCountColumns < ActiveRecord::Migration
  def change
    change_column :questions, :option_a_count, :integer, default: 0
    change_column :questions, :option_b_count, :integer, default: 0
  end
end
