class RemoveOptionImagesColumns < ActiveRecord::Migration
  def change
    remove_column :questions, :option_a_image_file_name
    remove_column :questions, :option_a_image_content_type
    remove_column :questions, :option_a_image_file_size
    remove_column :questions, :option_a_image_updated_at
    remove_column :questions, :option_b_image_file_name
    remove_column :questions, :option_b_image_content_type
    remove_column :questions, :option_b_image_file_size
    remove_column :questions, :option_b_image_updated_at
  end
end
