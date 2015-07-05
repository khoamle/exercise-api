class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :instruction
      t.string :equipment
      t.string :muscle
      t.string :level

      t.timestamps null: false
    end
  end
end
