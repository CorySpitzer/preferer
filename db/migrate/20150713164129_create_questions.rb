class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :optionA
      t.string :optionB
      t.integer :optionA_count
      t.integer :optionB_count

      t.timestamps
    end
  end
end
