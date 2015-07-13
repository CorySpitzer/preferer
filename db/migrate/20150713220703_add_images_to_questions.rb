class AddImagesToQuestions < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.attachment :option_a_image
      t.attachment :option_b_image
    end
  end
end
