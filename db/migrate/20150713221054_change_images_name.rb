class ChangeImagesName < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.attachment :image_a
      t.attachment :image_b
    end
  end
end
